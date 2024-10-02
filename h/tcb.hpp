//
// Created by os on 5/8/24.
//

#ifndef AM180263_CCB_H
#define AM180263_CCB_H

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"
typedef TCB* thread_t;
class Thread;

class TCB
{
public:

    static bool readyToPrintA;
    static bool readyToPrintB;
    static bool readyToPrintC;
    static int timeSliceCounter;
    //Thread* threadHandle;
    ~TCB() { MemoryAllocator::memfree(stack);}
    bool isFinished() const { return finished;}
    void setFinished(bool value){ TCB::finished = value; }

    bool isBlocked() const { return blocked;}
    void setBlocked(bool blocked) { TCB::blocked = blocked;}

    static TCB *getRunning() {return running;}
    static void setRunning(TCB *running) {TCB::running = running;}

    bool isMain() const{ return main;}

    uint64 getTimeSlice() const { return timeSlice;}
    void setTimeSlice(uint64 timeSlice) {TCB::timeSlice = timeSlice;}

    using Body = void (*) (void* );
    Thread* threadHandle;

   static TCB * createThread(Body body, void* arg);

    static int exitThread();
    static void dispatch();
    static void join(TCB* handle);
    void release();

    static void yield();
    static TCB *running;
    static int ID;

    static int getId() { return running->myId;};
    static void barrier();
private:
    TCB(Body body, void* arg) :
    body(body),
    stack(new uint64[DEFAULT_STACK_SIZE]),
    context({
        (uint64) &threadWrapper,
        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
            }),
            timeSlice(DEFAULT_TIME_SLICE),
            arg(arg),
            finished(false),
            blocked(false),
            main(body == nullptr ? true : false),
            myId(ID++)

    {
//if(body!= nullptr) Scheduler::put(this);
    }
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };


    Body body;
    //void* arg;
    uint64 *stack;
    Context context;

    uint64 timeSlice;
    void* arg;
    bool finished;
    bool blocked;
    bool main;
    int myId;
    List<TCB> joinThreads;
    static List<TCB> blockedBarrier;
    static int blockedNumber;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *newContext);

    static uint64 constexpr STACK_SIZE = 1024;

 //   static uint64 constexpr TIME_SLICE = 2;


};




#endif //AM180263_CCB_H
