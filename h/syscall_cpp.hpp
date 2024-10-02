//
// Created by os on 5/10/24.
//

#ifndef AM180263_SYSCALL_CPP_H
#define AM180263_SYSCALL_CPP_H

#include "syscall_c.hpp"

class Thread {
public:
    Thread(void (*body) (void*), void* arg);
    virtual ~Thread();
    int start();
    static void dispatch();
    static int sleep(time_t);
    void join();
    static void setRunning(Thread* thread);
    static void barrier();
protected:
    Thread();
    virtual void run() { }
private:
    thread_t myHandle;
    void (*body) (void*);
    void* arg;
    friend class TCB;

    static void runWrap( void* thread);
};


class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};

//class PeriodicThread : public Thread {
//public:
//    void terminate ();
//protected:
//    PeriodicThread (time_t period);
//    virtual void periodicActivation () {}
//private:
//    time_t period;
//};

class Console {
public:
    static char getc();
    static void putc(char );
};



#endif //AM180263_SYSCALL_CPP_H
