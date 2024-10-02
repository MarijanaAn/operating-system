//
// Created by os on 6/13/24.
//


#include "../lib/mem.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"


void *operator new (size_t n) {
    return MemoryAllocator::memalloc(n);
  // return mem_alloc(n);
}

void *operator new[] (size_t n) {
    //return mem_alloc(n);
    return MemoryAllocator::memalloc(n);
}

void operator delete (void *p) noexcept {
   //mem_free(p);
  MemoryAllocator::memfree(p);
}

void operator delete[] (void *p) noexcept {
    //mem_free(p);
    MemoryAllocator::memfree(p);
}