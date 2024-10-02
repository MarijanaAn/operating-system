//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../tests/printing.hpp"
#include "../h/sem.hpp"


void Riscv::popSppSpie()
{
 // Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

using Body = void (*) (void*);



void Riscv::handleSupervisorTrap() {

    uint64 scause = r_scause();
    uint64 code;
    __asm__ volatile ("mv %0, a0" : "=r"(code));
//    if (scause == 0x0000000000000009UL && code == USER)
//    {
//        uint64 sepc = r_sepc() + 4;
//        mc_sstatus(SSTATUS_SPP);
//        w_sepc(sepc);
////        uint64 sepc = r_sepc() + 4;
////        uint64 sstatus = r_sstatus();
////        sstatus = 32;
////        w_sstatus(sstatus);
////        w_sepc(sepc);
//    } else
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        uint64 sepc = r_sepc() + 4;
        uint64 sstatus = r_sstatus();

        uint64 codde;
        __asm__ volatile ("mv %0, a0" : "=r"(codde));

            switch (codde) {
                case MEM_ALLOC:
                    size_t blkNum;
                    __asm__ volatile("mv %0, a1" : "=r" (blkNum));

                    void *addr;
                    addr = MemoryAllocator::memalloc(blkNum);

                    __asm__ volatile("mv a0, %0" : : "r"(addr));
                    __asm__ volatile("sd a0, 80(s0)" );

                    break;

                case MEM_FREE:
                    void *addrf;
                    __asm__ volatile("mv %0, a1" : "=r" (addrf));

                    int retFreeMem;
                    retFreeMem = MemoryAllocator::memfree(addrf);

                    __asm__ volatile("mv a0, %0" : : "r"(retFreeMem));
                    __asm__ volatile("sd a0, 80(s0)" );

                    break;

                case THREAD_CREATE:

                    thread_t *tcb;
                    Body body;
                    void *args;
                    __asm__ volatile ("mv %0, a1" : "=r" (tcb));
                    __asm__ volatile ("mv %0, a2" : "=r" (body));
                    __asm__ volatile ("mv %0, a7" : "=r" (args));
                    *tcb = TCB::createThread(body, args);
                    int tRet;
                    if (tcb == nullptr) tRet = -1;
                    else tRet = 0;
                    __asm__ volatile("mv a0, %0" : : "r"(tRet));
                    __asm__ volatile("sd a0, 80(s0)" );
                    break;
                case THREAD_DISPATCH:
                    TCB::dispatch();

                    break;

                case THREAD_EXIT:
                    uint64 e;
                    e = TCB::exitThread();

                    __asm__ volatile("mv a0, %0" : : "r"(e));
                    __asm__ volatile("sd a0, 80(s0)" );

                    break;
                case THREAD_JOIN:
                    thread_t handle;
                    __asm__ volatile("mv %0, a1" : "=r"(handle));

                    TCB::join(handle);
                    TCB::dispatch();
                    break;
                case THREAD_ID:
                    int id;
                    id = TCB::getId();
                    __asm__ volatile("mv a0, %0" : : "r"(id));
                    __asm__ volatile("sd a0, 80(s0)" );
                    TCB::dispatch();
                    break;
                case THREAD_BARRIER:
                    TCB::barrier();
                    break;
                case PUTC:
                    char c;
                    __asm__ volatile("mv %0, a1" : "=r" (c));
                    __putc(c);
                    break;

                case GETC:
                    char c1;
                    c1 = __getc();
                    __asm__ volatile ("mv a0, %0"::"r" (c1));

                    __asm__ volatile("sd a0, 80(s0)" );
                    break;

                case SEM_OPEN:
                    int oRet;
                    unsigned init;
                    __asm__ volatile("mv %0, a2" : "=r"(init));

                    sem_t *handleOpen;
                    __asm__ volatile("mv %0, a1" : "=r" (handleOpen));


                    *handleOpen = Sem::open(init);
                    if (*handleOpen == nullptr) oRet = -1;
                    else oRet = 0;

                    __asm__ volatile ("mv a0, %0"::"r" (oRet));
                    __asm__ volatile("sd a0, 80(s0)" );


                    break;

                case SEM_CLOSE:
                    int cRet;
                    sem_t handleClose;
                    __asm__ volatile("mv %0, a1" : "=r" (handleClose));

                    if (handleClose == nullptr) cRet = -1;
                    else cRet = handleClose->close();

                    __asm__ volatile("mv a0, %0" : : "r"(cRet));
                    __asm__ volatile("sd a0, 80(s0)" );
                    break;

                case SEM_WAIT:
                    int wRet;
                    sem_t handleWait;
                    __asm__ volatile("mv %0, a1" : "=r" (handleWait));

                    if (handleWait == nullptr) wRet = -1;
                    else wRet = handleWait->wait();

                    __asm__ volatile("mv a0, %0" : : "r"(wRet));
                    __asm__ volatile("sd a0, 80(s0)" );
                    break;

                case SEM_SIGNAL:
                    int sRet;
                    sem_t handleSignal;
                    __asm__ volatile("mv %0, a1" : "=r" (handleSignal));

                    if (handleSignal == nullptr) sRet = -1;
                    else sRet = handleSignal->signal();

                    __asm__ volatile("mv a0, %0" : : "r"(sRet));
                    __asm__ volatile("sd a0, 80(s0)" );

                    break;

                case SEM_TRYWAIT:
                    int twRet;
                    sem_t handleTrywait;
                    __asm__ volatile("mv %0, a1" : "=r" (handleTrywait));

                    if (handleTrywait) twRet = -1;
                    else twRet = handleTrywait->trywait();

                    __asm__ volatile("mv a0, %0" : : "r"(twRet));
                    __asm__ volatile("sd a0, 80(s0)" );

                    break;
                default:
                    break;
            }
            w_sepc(sepc);
            w_sstatus(sstatus);

    }else if(scause == 0x8000000000000001UL){
        //interrupt: yes, cause code:supervisor software interrupt(timer)
        mc_sip(SIP_SSIE);
        //printString("Tajmerr");
        if(TCB::timeSliceCounter++ >= 10 && !(TCB::readyToPrintA || TCB::readyToPrintB || TCB::readyToPrintC)) {
           // printString("postavlja se sve na true");
            TCB::readyToPrintA = true;
            TCB::readyToPrintB = true;
            TCB::readyToPrintC = true;
            TCB::timeSliceCounter = 0;
        }
    } else if(scause == 0x8000000000000009UL){
        //interrupt yes, cause: supervisor external interrupt(console)
        console_handler();
    } else {
        //unexpected trap cause
        // print scause, sepc, stval
        uint64 s = r_sepc();
if(scause == 0x0000000000000002UL) printString("Greska! Nelegalna instrukcija! sepc :");
        if(scause == 0x0000000000000005UL) printString("Greska! Nedozvoljena adresa citanja! sepc :");
        if(scause == 0x0000000000000007UL) printString("Greska! Nedozvoljena adresa upisa! sepc :");
        printInt(s);
        printString("\n");

        for(int i = 0; i < 10000; i++){
            for (int j = 0; j < 10000; j++ ) {}
        }


    }
}