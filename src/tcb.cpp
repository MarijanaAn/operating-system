//
// Created by os on 5/8/24.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../tests/printing.hpp"

TCB *TCB::running = nullptr;
bool TCB::readyToPrintA = false;
bool TCB::readyToPrintB = false;
bool TCB::readyToPrintC = false;
int TCB::timeSliceCounter = 0;
int TCB::ID = 0;

int TCB::blockedNumber = 0;
List<TCB> TCB::blockedBarrier;

void TCB::barrier(){
    if(blockedNumber  < ID -3){
        blockedBarrier.addLast(TCB::running);
        blockedNumber++;
        TCB::running->setBlocked(true);
    } else {
        while (blockedBarrier.hasElem()) {
            TCB *t = blockedBarrier.removeFirst();
            t->setBlocked(false);
            blockedNumber--;
            Scheduler::put(t);
        }
    }
    while(running->blocked) thread_dispatch();
}

void TCB::yield(){

    uint64 code = THREAD_DISPATCH;
    __asm__ volatile("mv a0, %0" : : "r"(code));
    __asm__ volatile("ecall");

}

void TCB::dispatch(){
    TCB *old = running;
    if(!old->isFinished() && !old->isBlocked()){
        Scheduler::put(old);
    }
    running = Scheduler::get();

    if(running->isMain()) Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    TCB::contextSwitch(&old->context, &running->context);
}

TCB * TCB::createThread(Body body, void* arg)
{
    TCB* newTCB = new TCB(body, arg);
    if(!newTCB->isMain())
    Scheduler::put(newTCB);
    return newTCB;
}

void TCB::threadWrapper( ){
    Riscv::popSppSpie();

  // running->body(running->arg);
    if(running->isMain()){
        //za main

            running->threadHandle->run();

    }
    else
    running->body(running->arg);
    running->setFinished(true);
    running->release();
    TCB::yield();
}

int TCB::exitThread() {
    if(!running->isFinished()) {
        running->setFinished(true);
        TCB::dispatch();
        return 0;
    } else return -1;
}

void TCB::join(TCB* t) {
    if(!t->isFinished()) {
        running->setBlocked(true);
        t->joinThreads.addLast(running);
    }
}
void TCB::release()
{
    while(joinThreads.hasElem()) {
        TCB* t = joinThreads.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    }
}

