//
// Created by os on 6/17/24.
//

#include "../h/sem.hpp"

Sem* Sem::open(unsigned int i){
    return new Sem(i);
}

int Sem::close(){
    if(getState() == OPENED){
        while (blockedThreads.hasElem() ) {
            TCB* t = blockedThreads.removeFirst();
            t->setFinished(false);
            Scheduler::put(t);
        }
        setState(CLOSED);
        return 0;
    } else return -1;
}

int Sem::wait() {
    if(getState()==OPENED) {
        if (value <= 0) {
            blockedThreads.addLast(TCB::running);

            TCB::running->setBlocked(true);
            //thread_dispatch();
            TCB::dispatch();
        } else {
            value -= 1;
        }

        return 0;
    } else return -1;
}

int Sem::signal() {
    if(getState() == OPENED) {
        if (blockedThreads.hasElem()) {
            TCB* t = blockedThreads.removeFirst();

            t->setBlocked(false);
            Scheduler::put(t);

        } else {
            value += 1;
        }

        return 0;
    }else return -1;
}

int Sem::trywait() {
    if(getState() == OPENED){
        if(value >0) {
            value -=1;
            return 0;}
        else return 1;
    } else return -1;
}


Sem::~Sem() {
    close();
}

