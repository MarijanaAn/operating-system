//
// Created by os on 5/10/24.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"

Thread::Thread(void(*body)(void*), void *arg ) {
this->body = body;
this->arg = arg;
    thread_create(&myHandle, this->body, this->arg);
    myHandle->threadHandle = this;
}

void Thread::setRunning(Thread* thread) {
    TCB::running = thread->myHandle;
}

void Thread::barrier(){
    _barrier();
}

Thread::Thread() {
//    this->body = nullptr;
//    this->arg = nullptr;
   thread_create(&myHandle, nullptr, nullptr);

   myHandle->threadHandle = this;
}

Thread::~Thread() {
    delete myHandle;
}

int Thread::start() {
        //thread_create(&myHandle, this->body, this->arg);
    //myHandle->threadHandle = this;
Scheduler::put(myHandle);
return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::join() {
    thread_join(myHandle);
}

int Thread::sleep(time_t) {
    return 0;
}

void Thread::runWrap(void *thread ) {
 if(thread!=nullptr) ((Thread* )thread)->run();
}
//-------------------------------semafori---------------------------------------------------

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);

}
Semaphore::~Semaphore (){
    sem_close(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
int Semaphore::signal(){
    return sem_signal(myHandle);
}
int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

int Semaphore::timedWait(time_t time) {
    return sem_timedwait(myHandle, time);
}


//----------------------------------periodic thread-----------------------------------------

//----------------------------------console-------------------------------------------------
char Console::getc () {
    return ::getc();
}
void Console::putc (char c) {
    ::putc(c);
}

