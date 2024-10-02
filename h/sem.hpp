//
// Created by os on 6/17/24.
//

#ifndef AM180263_SEM_H
#define AM180263_SEM_H

#include "../h/syscall_c.hpp"
#include "../h/list.hpp"
#include "../h/tcb.hpp"


class Sem {
public:

    Sem (int init = 1) {
        this->value = init;
        setState(OPENED);
    }
    ~Sem();

    static Sem* open(unsigned int i);
    int close();

    int wait();
    int signal();
    int trywait();



    enum State {
        OPENED,
        CLOSED
    };

void setState(State state) {this->state = state;}
State getState() {return state;}

private:
    int value;
    List<TCB> blockedThreads;
    State state;
};


#endif //AM180263_SEM_H
