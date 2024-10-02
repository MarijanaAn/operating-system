//
// Created by os on 5/10/24.
//

#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../tests/printing.hpp"

uint64 code;

void syscall(){
    __asm__ volatile("mv a0, %0" : : "r"(code));
    __asm__ volatile("ecall");
}
uint64 value;

uint64 ret(){
    __asm__ volatile("mv a0, %0" : : "r"(code));
    __asm__ volatile("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    return value;
}

void* mem_alloc(size_t size){
   code = MEM_ALLOC;

    //ovde treba u blokovima
    size_t blkNum = size / MEM_BLOCK_SIZE;
    if(size % MEM_BLOCK_SIZE > 0) blkNum += 1;
    blkNum *= MEM_BLOCK_SIZE;
    __asm__ volatile("mv a1,%0": : "r"(blkNum));

    return (void*) ret();

}

int mem_free(void* addr){
    code = MEM_FREE;
    __asm__ volatile("mv a1, %0" : : "r"(addr));

    return (int) ret();
}


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg){
//ovde nesto ne valjaa
//
    code = THREAD_CREATE;

    __asm__ volatile("mv a7, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));

   return (int) ret();


}

int thread_exit(){
    code = THREAD_EXIT;
    return (int) ret();
}
void thread_dispatch(){
    code = THREAD_DISPATCH;

    //za ovo mora druga funkcija jer je void
   syscall();
}

void thread_join(thread_t handle){
    code = THREAD_JOIN;
    __asm__ volatile("mv a1, %0" : : "r"(handle));

    syscall();
}
int getThreadId() {
    code = THREAD_ID;

    return (int) ret();

}

void _barrier() {
    code = THREAD_BARRIER;
    syscall();
}

int sem_open(sem_t* handle, unsigned init){
    code=SEM_OPEN;
    __asm__ volatile("mv a2, %0" : : "r"(init));
    __asm__ volatile("mv a1, %0" : : "r"(handle));

    return (int) ret();

}
int sem_close(sem_t handle){
    code = SEM_CLOSE;
    __asm__ volatile("mv a1, %0" : : "r"(handle));

    return (int) ret();
}

int sem_wait(sem_t id){
    code = SEM_WAIT;
    __asm__ volatile("mv a1, %0" : : "r"(id));

    return (int) ret();
}
int sem_signal(sem_t id){
    code = SEM_SIGNAL;
    __asm__ volatile("mv a1, %0" : : "r"(id));

    return (int) ret();
}
int sem_timedwait(sem_t id, time_t timeout){
//    code = SEM_TIMEDWAIT;
//    __asm__ volatile("mv a2, %0" : : "r"(timeout));
//    __asm__ volatile("mv a1, %0" : : "r"(id));
//
//    return (int) ret();
return 0;
}
int sem_trywait(sem_t id){
    code = SEM_TRYWAIT;
    __asm__ volatile("mv a1, %0" : : "r"(id));

    return (int) ret();
}

int time_sleep(time_t sleep){
//    code = TIME_SLEEP;
//    __asm__ volatile("mv a1, %0" : : "r"(sleep));
//
//    return (int) ret();
return 0;
}

char getc(){
    code = GETC;

    return (char)ret();
}

void putc(char c){
    code = PUTC;

    __asm__ volatile("mv a1, %0" : : "r"(c));
    syscall();
}

void userMode(){
    code = USER;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile ("ecall");
}
