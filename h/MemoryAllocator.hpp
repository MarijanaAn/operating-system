//
// Created by os on 5/10/24.
//

#ifndef AM180263_MEMORYALLOCATOR_H
#define AM180263_MEMORYALLOCATOR_H


#include "../lib/hw.h"

typedef struct MemBlock {
    size_t size;
    MemBlock *next;
    //MemBlock* prev;
} memBlk;

class MemoryAllocator {
    //
    MemoryAllocator() {}

    static MemoryAllocator* memAllocator;
    static MemBlock* freeMemHead;
    static bool firstTime;

public:
    //zabrana konstruktora da bi klasa bila singleton
    MemoryAllocator(MemoryAllocator &)=delete;
    void operator=(const MemoryAllocator&)=delete;

    static void* memalloc(size_t size);
    static int memfree(void* addr);
};


#endif //AM180263_MEMORYALLOCATOR_H
