//
// Created by os on 5/10/24.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
//
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

bool MemoryAllocator::firstTime = true;
MemBlock* MemoryAllocator::freeMemHead = nullptr;

void* MemoryAllocator::memalloc(size_t size) {
    if(firstTime) {
        freeMemHead = (MemBlock* ) HEAP_START_ADDR;
        freeMemHead->size = (size_t ) ((char* ) HEAP_END_ADDR - (char* ) HEAP_START_ADDR - sizeof(MemBlock));
        freeMemHead->next = nullptr;
        firstTime = false;
    }

    size_t blkNum = (size + sizeof(MemBlock) -1) / MEM_BLOCK_SIZE;
    if((size + sizeof(MemBlock) - 1) % MEM_BLOCK_SIZE != 0) blkNum +=1;

    MemBlock *cur, *prev;

    for(cur = freeMemHead, prev = nullptr; cur != nullptr && cur->size < blkNum * MEM_BLOCK_SIZE; cur = cur->next) {
        prev = cur;
    }

    if(!cur) return nullptr;

    if(cur->size > (blkNum*MEM_BLOCK_SIZE + sizeof(MemBlock))) {
        if(prev == nullptr) {
            //uzimamo od prvog clana i njega samnjujemo
            freeMemHead = (MemBlock* ) ((char* ) cur + blkNum * MEM_BLOCK_SIZE);
            freeMemHead->next = cur->next;
            freeMemHead->size = cur->size - blkNum * MEM_BLOCK_SIZE;
            cur->size = blkNum * MEM_BLOCK_SIZE;

        } else {
            MemBlock* newBlk = (MemBlock* ) ((char* ) cur + blkNum * MEM_BLOCK_SIZE);
            prev->next = newBlk;
            newBlk->next = cur->next;
            newBlk->size = cur->size - blkNum * MEM_BLOCK_SIZE;
            cur->size = blkNum * MEM_BLOCK_SIZE;
        }
    } else {
        if(prev == nullptr ) freeMemHead = cur->next;
        else {
            prev->next = cur->next;
        }
        cur->size = blkNum * MEM_BLOCK_SIZE;
    }

    return (void* ) ((char*) cur + sizeof(MemBlock) );
}

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------

void tryToJoin(MemBlock* cur){
    if (cur->next) {
        if (cur->size+(char*)cur==(char*)(cur->next)) {
            cur->size+=cur->next->size;
            cur->next=cur->next->next;
        }
    }
}

int MemoryAllocator::memfree(void *addr) {
    if(addr == nullptr) return -1;
    if(addr > (void*) HEAP_END_ADDR || addr < (void*) HEAP_START_ADDR ) return -2;

    MemBlock* newBlk = (MemBlock* ) ((char* )addr - sizeof(MemBlock));
    if(freeMemHead ) {
        if( addr < (void*)freeMemHead) {
            //dodajemo prvi u listu
            newBlk->next = freeMemHead;
            freeMemHead = newBlk;

            return 0;
        } else {
            MemBlock* temp;
            for (temp = freeMemHead; temp->next; temp = temp->next) {
                if (addr < (void *) (temp->next)) break;
            }

            if(temp->next) newBlk->next = temp->next;
            else newBlk->next = nullptr;
            temp->next = newBlk;

            tryToJoin(newBlk);
            tryToJoin(temp);

            return 0;
        }
    } else {
        //postavljamo newBlk da bude prvi
        freeMemHead = newBlk;
        freeMemHead->next = nullptr;

        return 0;
    }
}

