#include "printing.hpp"

#define LEVEL_1_IMPLEMENTED 0
#define LEVEL_2_IMPLEMENTED 1
#define LEVEL_3_IMPLEMENTED 1
#define LEVEL_4_IMPLEMENTED 1

#if LEVEL_2_IMPLEMENTED == 1
// TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)
#include "../tests/Threads_C_API_test.hpp"
// TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)
#include "../tests/Threads_CPP_API_test.hpp"
// TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)
#include "../tests/System_Mode_test.hpp"
#endif

#if LEVEL_3_IMPLEMENTED == 1
// TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)
#include "../tests/ConsumerProducer_C_API_test.hpp"
// TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)
#include "../tests/ConsumerProducer_CPP_Sync_API_test.hpp"
#endif

#if LEVEL_4_IMPLEMENTED == 1
// TEST 5 (zadatak 4., thread_sleep test C API)
#include "../tests/ThreadSleep_C_API_test.hpp"
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../tests/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#include "testGetId.h"
#include "../tests/testBarrier.hpp"

#endif

void userMain() {
    printString("Unesite broj testa? [1-9]\n");
    int test = getc() - '0';
    getc(); // Enter posle broja

    if ((test >= 1 && test <= 2) || test == 7 || test == 8 || test == 9) {
        if (LEVEL_2_IMPLEMENTED == 0) {
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
        if (LEVEL_3_IMPLEMENTED == 0) {
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
        if (LEVEL_4_IMPLEMENTED == 0) {
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
#endif
            break;
        case 3:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_C_API();
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
#endif
            break;
        case 4:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_CPP_Sync_API();
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
#endif
            break;
        case 5:
#if LEVEL_4_IMPLEMENTED == 1
            testSleeping();
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
#endif
            break;
        case 6:
#if LEVEL_4_IMPLEMENTED == 1
            testConsumerProducer();
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
#endif
            break;
        case 7:
#if LEVEL_2_IMPLEMENTED == 1
            System_Mode_test();
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        case 8:
#if LEVEL_2_IMPLEMENTED == 1
            testGetId();
            printString("Test se uspesno zavrsio\n");
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        case 9:
#if LEVEL_2_IMPLEMENTED == 1
            testBarrier();
            printString("Test se uspesno zavrsio\n");
            printString("TEST 9 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}