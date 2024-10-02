//
// Created by os on 5/6/24.
//

#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../tests/printing.hpp"
#include "../h/syscall_cpp.hpp"


extern void userMain();

void userWrapper( ) {
    userMain();
}

class T: public Thread{
public: T():Thread() {}
void run() override {}
};


int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//       Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
 //   __asm__ volatile( "csrc sie, %[mask]" : : [mask] "r"(2) );
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    TCB *main;
    thread_create(&main, nullptr, nullptr);
    TCB::running = main;


   userMode();

    TCB* t;

    thread_create(&t, reinterpret_cast<void (*)(void *)>(userMain), nullptr);

    while(!t->isFinished()) {
        thread_dispatch();
    }

userMain();
    return 0;
}



