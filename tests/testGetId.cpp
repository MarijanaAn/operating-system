//
// Created by os on 9/18/24.
//

#include "testGetId.h"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "../h/tcb.hpp"
class WorkerAMod: public Thread {
public:
    WorkerAMod():Thread() {}
    //static bool timeForAToPrint;

    void run() override {
        functionAMod(nullptr);
    }

    void functionAMod(void* ptr) {
        for(uint64 i = 0; i < 10; i++) {
            while(!TCB::readyToPrintA) {

            }
for(uint64 k = 0; k < 3000000; k++) {
                //busy wait!
            }
          //  printString("Evo me u A");
            TCB::readyToPrintA = false;
            int idA = getThreadId();
            printString("A: MyID: ");
            printInt(idA);
            printString("\n");
           // printString("opet");
            thread_dispatch();
        }
    }
};

class WorkerBMod: public Thread {
public:
    WorkerBMod(): Thread() {}

    void run() override {
        functionBMod(nullptr);
    }

    void functionBMod(void* ptr) {
        //printString("Evo me u B");
        for(uint64 i = 0; i< 10; i++) {
            for(uint64 k = 0; k < 3000000; k++) {
                //busy wait!
            }
//            while(!TCB::readyToPrintB) {
//
//            }
          //  printString("Evo me u B");
            TCB::readyToPrintB = false;
            int idB = getThreadId();
            printString("B: MyID: ");
            printInt(idB);
            printString("\n");

            thread_dispatch();
        }
    }
};

class WorkerCMod: public Thread {
public:
    WorkerCMod():Thread() {}

    void run() override {
        functionCMod(nullptr);
    }

    void functionCMod(void* ptr) {
        for(uint64 i = 0; i < 10; i++) {
            for(uint64 k = 0; k < 3000000; k++) {
                //busy wait!
            }
//            while(!TCB::readyToPrintC) {
//               // printString("....!");
//            }
            TCB::readyToPrintC = false;
            int idC = getThreadId();
            printString("C: MyID: ");
            printInt(idC);
            printString("\n");

            thread_dispatch();
        }
    }
};

void testGetId()
{

    Thread *threads[5];

    threads[0] = new WorkerAMod();
    printString("ThreadA created!\n");

    threads[1] = new WorkerBMod();
    printString("ThreadB created!\n");

    threads[2] = new WorkerCMod();
    printString("ThreadC created!\n");

    threads[0]->start();
    threads[1]->start();
    threads[2]->start();

    threads[0]->join();
    threads[1]->join();
    threads[2]->join();
}