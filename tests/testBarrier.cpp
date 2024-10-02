//
// Created by os on 9/10/24.
//

#include "testBarrier.hpp"
#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

#define N  10


static int numberOfThreads = 0;

class Test: public Thread {
public:
    Test():Thread() {}

    void run() override {
        functionCMod(nullptr);
    }

    void functionCMod(void* ptr) {
        int id = getThreadId();
        printString("Thread id= ");
        printInt(id);
        printString(": START!\n");

        for(int i = 0; i < 3; i++) {
           // printString("u petlji sam");
            int id = getThreadId();
            for (int j = 0; j < 1000 * id; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
            }

            barrier();
            printString(" Iteration=");
            printInt(i);
            printString("  Thread id= ");
            printInt(id);
            printString(": Finished!\n");
        }
//        numberOfThreads--;
//        if(numberOfThreads == 0 ) thread_dispatch();
    }
};

void testBarrier()
{
    Thread* threads[10];

    for(int i = 0; i< N; i++){
        threads[i] = new Test();
        printString("ThreadA created!\n");
        numberOfThreads++;
    }

    for(int i = 0; i< N; i++){
        threads[i]->start();
    }

    for(int i = 0; i< N; i++){
        threads[i]->join();
    }

}