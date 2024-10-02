
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	c6013103          	ld	sp,-928(sp) # 8000bc60 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0dd060ef          	jal	ra,800068f8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	7a1000ef          	jal	ra,80002024 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #  a0 -&old->context
    # a1 - &new->context
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z7syscallv>:
#include "../h/riscv.hpp"
#include "../tests/printing.hpp"

uint64 code;

void syscall(){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(code));
    80001150:	0000b797          	auipc	a5,0xb
    80001154:	b907b783          	ld	a5,-1136(a5) # 8000bce0 <code>
    80001158:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000115c:	00000073          	ecall
}
    80001160:	00813403          	ld	s0,8(sp)
    80001164:	01010113          	addi	sp,sp,16
    80001168:	00008067          	ret

000000008000116c <_Z3retv>:
uint64 value;

uint64 ret(){
    8000116c:	ff010113          	addi	sp,sp,-16
    80001170:	00813423          	sd	s0,8(sp)
    80001174:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(code));
    80001178:	0000b797          	auipc	a5,0xb
    8000117c:	b6878793          	addi	a5,a5,-1176 # 8000bce0 <code>
    80001180:	0007b703          	ld	a4,0(a5)
    80001184:	00070513          	mv	a0,a4
    __asm__ volatile("ecall");
    80001188:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    8000118c:	00050513          	mv	a0,a0
    80001190:	00a7b423          	sd	a0,8(a5)
    return value;
}
    80001194:	00813403          	ld	s0,8(sp)
    80001198:	01010113          	addi	sp,sp,16
    8000119c:	00008067          	ret

00000000800011a0 <_Z9mem_allocm>:

void* mem_alloc(size_t size){
    800011a0:	ff010113          	addi	sp,sp,-16
    800011a4:	00113423          	sd	ra,8(sp)
    800011a8:	00813023          	sd	s0,0(sp)
    800011ac:	01010413          	addi	s0,sp,16
   code = MEM_ALLOC;
    800011b0:	00100793          	li	a5,1
    800011b4:	0000b717          	auipc	a4,0xb
    800011b8:	b2f73623          	sd	a5,-1236(a4) # 8000bce0 <code>

    //ovde treba u blokovima
    size_t blkNum = size / MEM_BLOCK_SIZE;
    800011bc:	00655793          	srli	a5,a0,0x6
    if(size % MEM_BLOCK_SIZE > 0) blkNum += 1;
    800011c0:	03f57513          	andi	a0,a0,63
    800011c4:	00050463          	beqz	a0,800011cc <_Z9mem_allocm+0x2c>
    800011c8:	00178793          	addi	a5,a5,1
    blkNum *= MEM_BLOCK_SIZE;
    800011cc:	00679793          	slli	a5,a5,0x6
    __asm__ volatile("mv a1,%0": : "r"(blkNum));
    800011d0:	00078593          	mv	a1,a5

    return (void*) ret();
    800011d4:	00000097          	auipc	ra,0x0
    800011d8:	f98080e7          	jalr	-104(ra) # 8000116c <_Z3retv>

}
    800011dc:	00813083          	ld	ra,8(sp)
    800011e0:	00013403          	ld	s0,0(sp)
    800011e4:	01010113          	addi	sp,sp,16
    800011e8:	00008067          	ret

00000000800011ec <_Z8mem_freePv>:

int mem_free(void* addr){
    800011ec:	ff010113          	addi	sp,sp,-16
    800011f0:	00113423          	sd	ra,8(sp)
    800011f4:	00813023          	sd	s0,0(sp)
    800011f8:	01010413          	addi	s0,sp,16
    code = MEM_FREE;
    800011fc:	00200793          	li	a5,2
    80001200:	0000b717          	auipc	a4,0xb
    80001204:	aef73023          	sd	a5,-1312(a4) # 8000bce0 <code>
    __asm__ volatile("mv a1, %0" : : "r"(addr));
    80001208:	00050593          	mv	a1,a0

    return (int) ret();
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	f60080e7          	jalr	-160(ra) # 8000116c <_Z3retv>
}
    80001214:	0005051b          	sext.w	a0,a0
    80001218:	00813083          	ld	ra,8(sp)
    8000121c:	00013403          	ld	s0,0(sp)
    80001220:	01010113          	addi	sp,sp,16
    80001224:	00008067          	ret

0000000080001228 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg){
    80001228:	ff010113          	addi	sp,sp,-16
    8000122c:	00113423          	sd	ra,8(sp)
    80001230:	00813023          	sd	s0,0(sp)
    80001234:	01010413          	addi	s0,sp,16
//ovde nesto ne valjaa
//
    code = THREAD_CREATE;
    80001238:	01100793          	li	a5,17
    8000123c:	0000b717          	auipc	a4,0xb
    80001240:	aaf73223          	sd	a5,-1372(a4) # 8000bce0 <code>

    __asm__ volatile("mv a7, %0" : : "r"(arg));
    80001244:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001248:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    8000124c:	00050593          	mv	a1,a0

   return (int) ret();
    80001250:	00000097          	auipc	ra,0x0
    80001254:	f1c080e7          	jalr	-228(ra) # 8000116c <_Z3retv>


}
    80001258:	0005051b          	sext.w	a0,a0
    8000125c:	00813083          	ld	ra,8(sp)
    80001260:	00013403          	ld	s0,0(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z11thread_exitv>:

int thread_exit(){
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00113423          	sd	ra,8(sp)
    80001274:	00813023          	sd	s0,0(sp)
    80001278:	01010413          	addi	s0,sp,16
    code = THREAD_EXIT;
    8000127c:	01200793          	li	a5,18
    80001280:	0000b717          	auipc	a4,0xb
    80001284:	a6f73023          	sd	a5,-1440(a4) # 8000bce0 <code>
    return (int) ret();
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	ee4080e7          	jalr	-284(ra) # 8000116c <_Z3retv>
}
    80001290:	0005051b          	sext.w	a0,a0
    80001294:	00813083          	ld	ra,8(sp)
    80001298:	00013403          	ld	s0,0(sp)
    8000129c:	01010113          	addi	sp,sp,16
    800012a0:	00008067          	ret

00000000800012a4 <_Z15thread_dispatchv>:
void thread_dispatch(){
    800012a4:	ff010113          	addi	sp,sp,-16
    800012a8:	00113423          	sd	ra,8(sp)
    800012ac:	00813023          	sd	s0,0(sp)
    800012b0:	01010413          	addi	s0,sp,16
    code = THREAD_DISPATCH;
    800012b4:	01300793          	li	a5,19
    800012b8:	0000b717          	auipc	a4,0xb
    800012bc:	a2f73423          	sd	a5,-1496(a4) # 8000bce0 <code>

    //za ovo mora druga funkcija jer je void
   syscall();
    800012c0:	00000097          	auipc	ra,0x0
    800012c4:	e84080e7          	jalr	-380(ra) # 80001144 <_Z7syscallv>
}
    800012c8:	00813083          	ld	ra,8(sp)
    800012cc:	00013403          	ld	s0,0(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00113423          	sd	ra,8(sp)
    800012e0:	00813023          	sd	s0,0(sp)
    800012e4:	01010413          	addi	s0,sp,16
    code = THREAD_JOIN;
    800012e8:	01400793          	li	a5,20
    800012ec:	0000b717          	auipc	a4,0xb
    800012f0:	9ef73a23          	sd	a5,-1548(a4) # 8000bce0 <code>
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800012f4:	00050593          	mv	a1,a0

    syscall();
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	e4c080e7          	jalr	-436(ra) # 80001144 <_Z7syscallv>
}
    80001300:	00813083          	ld	ra,8(sp)
    80001304:	00013403          	ld	s0,0(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z11getThreadIdv>:
int getThreadId() {
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00113423          	sd	ra,8(sp)
    80001318:	00813023          	sd	s0,0(sp)
    8000131c:	01010413          	addi	s0,sp,16
    code = THREAD_ID;
    80001320:	01500793          	li	a5,21
    80001324:	0000b717          	auipc	a4,0xb
    80001328:	9af73e23          	sd	a5,-1604(a4) # 8000bce0 <code>

    return (int) ret();
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	e40080e7          	jalr	-448(ra) # 8000116c <_Z3retv>

}
    80001334:	0005051b          	sext.w	a0,a0
    80001338:	00813083          	ld	ra,8(sp)
    8000133c:	00013403          	ld	s0,0(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_Z8_barrierv>:

void _barrier() {
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00113423          	sd	ra,8(sp)
    80001350:	00813023          	sd	s0,0(sp)
    80001354:	01010413          	addi	s0,sp,16
    code = THREAD_BARRIER;
    80001358:	01600793          	li	a5,22
    8000135c:	0000b717          	auipc	a4,0xb
    80001360:	98f73223          	sd	a5,-1660(a4) # 8000bce0 <code>
    syscall();
    80001364:	00000097          	auipc	ra,0x0
    80001368:	de0080e7          	jalr	-544(ra) # 80001144 <_Z7syscallv>
}
    8000136c:	00813083          	ld	ra,8(sp)
    80001370:	00013403          	ld	s0,0(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init){
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00113423          	sd	ra,8(sp)
    80001384:	00813023          	sd	s0,0(sp)
    80001388:	01010413          	addi	s0,sp,16
    code=SEM_OPEN;
    8000138c:	02100793          	li	a5,33
    80001390:	0000b717          	auipc	a4,0xb
    80001394:	94f73823          	sd	a5,-1712(a4) # 8000bce0 <code>
    __asm__ volatile("mv a2, %0" : : "r"(init));
    80001398:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    8000139c:	00050593          	mv	a1,a0

    return (int) ret();
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	dcc080e7          	jalr	-564(ra) # 8000116c <_Z3retv>

}
    800013a8:	0005051b          	sext.w	a0,a0
    800013ac:	00813083          	ld	ra,8(sp)
    800013b0:	00013403          	ld	s0,0(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_Z9sem_closeP3Sem>:
int sem_close(sem_t handle){
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00113423          	sd	ra,8(sp)
    800013c4:	00813023          	sd	s0,0(sp)
    800013c8:	01010413          	addi	s0,sp,16
    code = SEM_CLOSE;
    800013cc:	02200793          	li	a5,34
    800013d0:	0000b717          	auipc	a4,0xb
    800013d4:	90f73823          	sd	a5,-1776(a4) # 8000bce0 <code>
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800013d8:	00050593          	mv	a1,a0

    return (int) ret();
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	d90080e7          	jalr	-624(ra) # 8000116c <_Z3retv>
}
    800013e4:	0005051b          	sext.w	a0,a0
    800013e8:	00813083          	ld	ra,8(sp)
    800013ec:	00013403          	ld	s0,0(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id){
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00113423          	sd	ra,8(sp)
    80001400:	00813023          	sd	s0,0(sp)
    80001404:	01010413          	addi	s0,sp,16
    code = SEM_WAIT;
    80001408:	02300793          	li	a5,35
    8000140c:	0000b717          	auipc	a4,0xb
    80001410:	8cf73a23          	sd	a5,-1836(a4) # 8000bce0 <code>
    __asm__ volatile("mv a1, %0" : : "r"(id));
    80001414:	00050593          	mv	a1,a0

    return (int) ret();
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	d54080e7          	jalr	-684(ra) # 8000116c <_Z3retv>
}
    80001420:	0005051b          	sext.w	a0,a0
    80001424:	00813083          	ld	ra,8(sp)
    80001428:	00013403          	ld	s0,0(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z10sem_signalP3Sem>:
int sem_signal(sem_t id){
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00113423          	sd	ra,8(sp)
    8000143c:	00813023          	sd	s0,0(sp)
    80001440:	01010413          	addi	s0,sp,16
    code = SEM_SIGNAL;
    80001444:	02400793          	li	a5,36
    80001448:	0000b717          	auipc	a4,0xb
    8000144c:	88f73c23          	sd	a5,-1896(a4) # 8000bce0 <code>
    __asm__ volatile("mv a1, %0" : : "r"(id));
    80001450:	00050593          	mv	a1,a0

    return (int) ret();
    80001454:	00000097          	auipc	ra,0x0
    80001458:	d18080e7          	jalr	-744(ra) # 8000116c <_Z3retv>
}
    8000145c:	0005051b          	sext.w	a0,a0
    80001460:	00813083          	ld	ra,8(sp)
    80001464:	00013403          	ld	s0,0(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_Z13sem_timedwaitP3Semm>:
int sem_timedwait(sem_t id, time_t timeout){
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
//    __asm__ volatile("mv a2, %0" : : "r"(timeout));
//    __asm__ volatile("mv a1, %0" : : "r"(id));
//
//    return (int) ret();
return 0;
}
    8000147c:	00000513          	li	a0,0
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_Z11sem_trywaitP3Sem>:
int sem_trywait(sem_t id){
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00113423          	sd	ra,8(sp)
    80001494:	00813023          	sd	s0,0(sp)
    80001498:	01010413          	addi	s0,sp,16
    code = SEM_TRYWAIT;
    8000149c:	02600793          	li	a5,38
    800014a0:	0000b717          	auipc	a4,0xb
    800014a4:	84f73023          	sd	a5,-1984(a4) # 8000bce0 <code>
    __asm__ volatile("mv a1, %0" : : "r"(id));
    800014a8:	00050593          	mv	a1,a0

    return (int) ret();
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	cc0080e7          	jalr	-832(ra) # 8000116c <_Z3retv>
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z10time_sleepm>:

int time_sleep(time_t sleep){
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00813423          	sd	s0,8(sp)
    800014d0:	01010413          	addi	s0,sp,16
//    code = TIME_SLEEP;
//    __asm__ volatile("mv a1, %0" : : "r"(sleep));
//
//    return (int) ret();
return 0;
}
    800014d4:	00000513          	li	a0,0
    800014d8:	00813403          	ld	s0,8(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret

00000000800014e4 <_Z4getcv>:

char getc(){
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00113423          	sd	ra,8(sp)
    800014ec:	00813023          	sd	s0,0(sp)
    800014f0:	01010413          	addi	s0,sp,16
    code = GETC;
    800014f4:	04100793          	li	a5,65
    800014f8:	0000a717          	auipc	a4,0xa
    800014fc:	7ef73423          	sd	a5,2024(a4) # 8000bce0 <code>

    return (char)ret();
    80001500:	00000097          	auipc	ra,0x0
    80001504:	c6c080e7          	jalr	-916(ra) # 8000116c <_Z3retv>
}
    80001508:	0ff57513          	andi	a0,a0,255
    8000150c:	00813083          	ld	ra,8(sp)
    80001510:	00013403          	ld	s0,0(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_Z4putcc>:

void putc(char c){
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00113423          	sd	ra,8(sp)
    80001524:	00813023          	sd	s0,0(sp)
    80001528:	01010413          	addi	s0,sp,16
    code = PUTC;
    8000152c:	04200793          	li	a5,66
    80001530:	0000a717          	auipc	a4,0xa
    80001534:	7af73823          	sd	a5,1968(a4) # 8000bce0 <code>

    __asm__ volatile("mv a1, %0" : : "r"(c));
    80001538:	00050593          	mv	a1,a0
    syscall();
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	c08080e7          	jalr	-1016(ra) # 80001144 <_Z7syscallv>
}
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret

0000000080001554 <_Z8userModev>:

void userMode(){
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00813423          	sd	s0,8(sp)
    8000155c:	01010413          	addi	s0,sp,16
    code = USER;
    80001560:	05000793          	li	a5,80
    80001564:	0000a717          	auipc	a4,0xa
    80001568:	76f73e23          	sd	a5,1916(a4) # 8000bce0 <code>
    __asm__ volatile("mv a0, %0" : : "r" (code));
    8000156c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001570:	00000073          	ecall
}
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_Z11userWrapperv>:
#include "../h/syscall_cpp.hpp"


extern void userMain();

void userWrapper( ) {
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00113423          	sd	ra,8(sp)
    80001588:	00813023          	sd	s0,0(sp)
    8000158c:	01010413          	addi	s0,sp,16
    userMain();
    80001590:	00004097          	auipc	ra,0x4
    80001594:	fb4080e7          	jalr	-76(ra) # 80005544 <_Z8userMainv>
}
    80001598:	00813083          	ld	ra,8(sp)
    8000159c:	00013403          	ld	s0,0(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <main>:
public: T():Thread() {}
void run() override {}
};


int main() {
    800015a8:	fe010113          	addi	sp,sp,-32
    800015ac:	00113c23          	sd	ra,24(sp)
    800015b0:	00813823          	sd	s0,16(sp)
    800015b4:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015b8:	0000a797          	auipc	a5,0xa
    800015bc:	6907b783          	ld	a5,1680(a5) # 8000bc48 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015c0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800015c4:	00200793          	li	a5,2
    800015c8:	1007a073          	csrs	sstatus,a5
//       Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
 //   __asm__ volatile( "csrc sie, %[mask]" : : [mask] "r"(2) );
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    TCB *main;
    thread_create(&main, nullptr, nullptr);
    800015cc:	00000613          	li	a2,0
    800015d0:	00000593          	li	a1,0
    800015d4:	fe840513          	addi	a0,s0,-24
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	c50080e7          	jalr	-944(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    800015e0:	0000a797          	auipc	a5,0xa
    800015e4:	6987b783          	ld	a5,1688(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x48>
    800015e8:	fe843703          	ld	a4,-24(s0)
    800015ec:	00e7b023          	sd	a4,0(a5)


   userMode();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	f64080e7          	jalr	-156(ra) # 80001554 <_Z8userModev>

    TCB* t;

    thread_create(&t, reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    800015f8:	00000613          	li	a2,0
    800015fc:	0000a597          	auipc	a1,0xa
    80001600:	63c5b583          	ld	a1,1596(a1) # 8000bc38 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001604:	fe040513          	addi	a0,s0,-32
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	c20080e7          	jalr	-992(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!t->isFinished()) {
    80001610:	fe043783          	ld	a5,-32(s0)
    static bool readyToPrintB;
    static bool readyToPrintC;
    static int timeSliceCounter;
    //Thread* threadHandle;
    ~TCB() { MemoryAllocator::memfree(stack);}
    bool isFinished() const { return finished;}
    80001614:	0387c783          	lbu	a5,56(a5)
    80001618:	00079863          	bnez	a5,80001628 <main+0x80>
        thread_dispatch();
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	c88080e7          	jalr	-888(ra) # 800012a4 <_Z15thread_dispatchv>
    80001624:	fedff06f          	j	80001610 <main+0x68>
    }

userMain();
    80001628:	00004097          	auipc	ra,0x4
    8000162c:	f1c080e7          	jalr	-228(ra) # 80005544 <_Z8userMainv>
    return 0;
}
    80001630:	00000513          	li	a0,0
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	02010113          	addi	sp,sp,32
    80001640:	00008067          	ret

0000000080001644 <_Z41__static_initialization_and_destruction_0ii>:
    while(joinThreads.hasElem()) {
        TCB* t = joinThreads.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    }
}
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
    80001650:	00100793          	li	a5,1
    80001654:	00f50863          	beq	a0,a5,80001664 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001658:	00813403          	ld	s0,8(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret
    80001664:	000107b7          	lui	a5,0x10
    80001668:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000166c:	fef596e3          	bne	a1,a5,80001658 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001670:	0000a797          	auipc	a5,0xa
    80001674:	68078793          	addi	a5,a5,1664 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    80001678:	0007b023          	sd	zero,0(a5)
    8000167c:	0007b423          	sd	zero,8(a5)
    80001680:	fd9ff06f          	j	80001658 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001684 <_ZN3TCB7barrierEv>:
void TCB::barrier(){
    80001684:	fe010113          	addi	sp,sp,-32
    80001688:	00113c23          	sd	ra,24(sp)
    8000168c:	00813823          	sd	s0,16(sp)
    80001690:	00913423          	sd	s1,8(sp)
    80001694:	01213023          	sd	s2,0(sp)
    80001698:	02010413          	addi	s0,sp,32
    if(blockedNumber  < ID -3){
    8000169c:	0000a717          	auipc	a4,0xa
    800016a0:	65470713          	addi	a4,a4,1620 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    800016a4:	01072783          	lw	a5,16(a4)
    800016a8:	ffd7879b          	addiw	a5,a5,-3
    800016ac:	01472703          	lw	a4,20(a4)
    800016b0:	0cf75063          	bge	a4,a5,80001770 <_ZN3TCB7barrierEv+0xec>
        blockedBarrier.addLast(TCB::running);
    800016b4:	0000a497          	auipc	s1,0xa
    800016b8:	63c48493          	addi	s1,s1,1596 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    800016bc:	0184b903          	ld	s2,24(s1)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800016c0:	01000513          	li	a0,16
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	478080e7          	jalr	1144(ra) # 80001b3c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016cc:	01253023          	sd	s2,0(a0)
    800016d0:	00053423          	sd	zero,8(a0)
        if (tail)
    800016d4:	0084b783          	ld	a5,8(s1)
    800016d8:	04078663          	beqz	a5,80001724 <_ZN3TCB7barrierEv+0xa0>
        {
            tail->next = elem;
    800016dc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016e0:	0000a797          	auipc	a5,0xa
    800016e4:	60a7bc23          	sd	a0,1560(a5) # 8000bcf8 <_ZN3TCB14blockedBarrierE+0x8>
        blockedNumber++;
    800016e8:	0000a797          	auipc	a5,0xa
    800016ec:	60878793          	addi	a5,a5,1544 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    800016f0:	0147a703          	lw	a4,20(a5)
    800016f4:	0017071b          	addiw	a4,a4,1
    800016f8:	00e7aa23          	sw	a4,20(a5)
        TCB::running->setBlocked(true);
    800016fc:	0187b783          	ld	a5,24(a5)
    void setFinished(bool value){ TCB::finished = value; }

    bool isBlocked() const { return blocked;}
    void setBlocked(bool blocked) { TCB::blocked = blocked;}
    80001700:	00100713          	li	a4,1
    80001704:	02e78ca3          	sb	a4,57(a5)
    while(running->blocked) thread_dispatch();
    80001708:	0000a797          	auipc	a5,0xa
    8000170c:	6007b783          	ld	a5,1536(a5) # 8000bd08 <_ZN3TCB7runningE>
    80001710:	0397c783          	lbu	a5,57(a5)
    80001714:	06078e63          	beqz	a5,80001790 <_ZN3TCB7barrierEv+0x10c>
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	b8c080e7          	jalr	-1140(ra) # 800012a4 <_Z15thread_dispatchv>
    80001720:	fe9ff06f          	j	80001708 <_ZN3TCB7barrierEv+0x84>
        } else
        {
            head = tail = elem;
    80001724:	0000a797          	auipc	a5,0xa
    80001728:	5cc78793          	addi	a5,a5,1484 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    8000172c:	00a7b423          	sd	a0,8(a5)
    80001730:	00a7b023          	sd	a0,0(a5)
    80001734:	fb5ff06f          	j	800016e8 <_ZN3TCB7barrierEv+0x64>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001738:	0000a797          	auipc	a5,0xa
    8000173c:	5c07b023          	sd	zero,1472(a5) # 8000bcf8 <_ZN3TCB14blockedBarrierE+0x8>

        T *ret = elem->data;
    80001740:	00053483          	ld	s1,0(a0)
        delete elem;
    80001744:	00000097          	auipc	ra,0x0
    80001748:	448080e7          	jalr	1096(ra) # 80001b8c <_ZdlPv>
    8000174c:	02048ca3          	sb	zero,57(s1)
            blockedNumber--;
    80001750:	0000a717          	auipc	a4,0xa
    80001754:	5a070713          	addi	a4,a4,1440 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    80001758:	01472783          	lw	a5,20(a4)
    8000175c:	fff7879b          	addiw	a5,a5,-1
    80001760:	00f72a23          	sw	a5,20(a4)
            Scheduler::put(t);
    80001764:	00048513          	mv	a0,s1
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	fb0080e7          	jalr	-80(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>
        if (!tail) { return 0; }
        return tail->data;
    }

    bool hasElem(){
        if(head) return true;
    80001770:	0000a517          	auipc	a0,0xa
    80001774:	58053503          	ld	a0,1408(a0) # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    80001778:	f80508e3          	beqz	a0,80001708 <_ZN3TCB7barrierEv+0x84>
        head = head->next;
    8000177c:	00853783          	ld	a5,8(a0)
    80001780:	0000a717          	auipc	a4,0xa
    80001784:	56f73823          	sd	a5,1392(a4) # 8000bcf0 <_ZN3TCB14blockedBarrierE>
        if (!head) { tail = 0; }
    80001788:	fa079ce3          	bnez	a5,80001740 <_ZN3TCB7barrierEv+0xbc>
    8000178c:	fadff06f          	j	80001738 <_ZN3TCB7barrierEv+0xb4>
}
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	00813483          	ld	s1,8(sp)
    8000179c:	00013903          	ld	s2,0(sp)
    800017a0:	02010113          	addi	sp,sp,32
    800017a4:	00008067          	ret

00000000800017a8 <_ZN3TCB5yieldEv>:
void TCB::yield(){
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00813423          	sd	s0,8(sp)
    800017b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(code));
    800017b4:	01300793          	li	a5,19
    800017b8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800017bc:	00000073          	ecall
}
    800017c0:	00813403          	ld	s0,8(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    800017cc:	fe010113          	addi	sp,sp,-32
    800017d0:	00113c23          	sd	ra,24(sp)
    800017d4:	00813823          	sd	s0,16(sp)
    800017d8:	00913423          	sd	s1,8(sp)
    800017dc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800017e0:	0000a497          	auipc	s1,0xa
    800017e4:	5284b483          	ld	s1,1320(s1) # 8000bd08 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    800017e8:	0384c783          	lbu	a5,56(s1)
    if(!old->isFinished() && !old->isBlocked()){
    800017ec:	00079663          	bnez	a5,800017f8 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked;}
    800017f0:	0394c783          	lbu	a5,57(s1)
    800017f4:	04078463          	beqz	a5,8000183c <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    800017f8:	00001097          	auipc	ra,0x1
    800017fc:	eb8080e7          	jalr	-328(ra) # 800026b0 <_ZN9Scheduler3getEv>
    80001800:	0000a797          	auipc	a5,0xa
    80001804:	50a7b423          	sd	a0,1288(a5) # 8000bd08 <_ZN3TCB7runningE>

    static TCB *getRunning() {return running;}
    static void setRunning(TCB *running) {TCB::running = running;}

    bool isMain() const{ return main;}
    80001808:	03a54783          	lbu	a5,58(a0)
    if(running->isMain()) Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    8000180c:	04078063          	beqz	a5,8000184c <_ZN3TCB8dispatchEv+0x80>
    80001810:	10000793          	li	a5,256
    80001814:	1007a073          	csrs	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80001818:	01850593          	addi	a1,a0,24
    8000181c:	01848513          	addi	a0,s1,24
    80001820:	00000097          	auipc	ra,0x0
    80001824:	8f0080e7          	jalr	-1808(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001828:	01813083          	ld	ra,24(sp)
    8000182c:	01013403          	ld	s0,16(sp)
    80001830:	00813483          	ld	s1,8(sp)
    80001834:	02010113          	addi	sp,sp,32
    80001838:	00008067          	ret
        Scheduler::put(old);
    8000183c:	00048513          	mv	a0,s1
    80001840:	00001097          	auipc	ra,0x1
    80001844:	ed8080e7          	jalr	-296(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>
    80001848:	fb1ff06f          	j	800017f8 <_ZN3TCB8dispatchEv+0x2c>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000184c:	10000793          	li	a5,256
    80001850:	1007b073          	csrc	sstatus,a5
}
    80001854:	fc5ff06f          	j	80001818 <_ZN3TCB8dispatchEv+0x4c>

0000000080001858 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001858:	fd010113          	addi	sp,sp,-48
    8000185c:	02113423          	sd	ra,40(sp)
    80001860:	02813023          	sd	s0,32(sp)
    80001864:	00913c23          	sd	s1,24(sp)
    80001868:	01213823          	sd	s2,16(sp)
    8000186c:	01313423          	sd	s3,8(sp)
    80001870:	03010413          	addi	s0,sp,48
    80001874:	00050913          	mv	s2,a0
    80001878:	00058993          	mv	s3,a1
    TCB* newTCB = new TCB(body, arg);
    8000187c:	05000513          	li	a0,80
    80001880:	00000097          	auipc	ra,0x0
    80001884:	2bc080e7          	jalr	700(ra) # 80001b3c <_Znwm>
    80001888:	00050493          	mv	s1,a0
            timeSlice(DEFAULT_TIME_SLICE),
            arg(arg),
            finished(false),
            blocked(false),
            main(body == nullptr ? true : false),
            myId(ID++)
    8000188c:	01253423          	sd	s2,8(a0)
    stack(new uint64[DEFAULT_STACK_SIZE]),
    80001890:	00008537          	lui	a0,0x8
    80001894:	00000097          	auipc	ra,0x0
    80001898:	2d0080e7          	jalr	720(ra) # 80001b64 <_Znam>
            myId(ID++)
    8000189c:	00a4b823          	sd	a0,16(s1)
    800018a0:	00000797          	auipc	a5,0x0
    800018a4:	1f078793          	addi	a5,a5,496 # 80001a90 <_ZN3TCB13threadWrapperEv>
    800018a8:	00f4bc23          	sd	a5,24(s1)
        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800018ac:	06050a63          	beqz	a0,80001920 <_ZN3TCB12createThreadEPFvPvES0_+0xc8>
    800018b0:	000087b7          	lui	a5,0x8
    800018b4:	00f50533          	add	a0,a0,a5
            myId(ID++)
    800018b8:	02a4b023          	sd	a0,32(s1)
    800018bc:	00200793          	li	a5,2
    800018c0:	02f4b423          	sd	a5,40(s1)
    800018c4:	0334b823          	sd	s3,48(s1)
    800018c8:	02048c23          	sb	zero,56(s1)
    800018cc:	02048ca3          	sb	zero,57(s1)
            main(body == nullptr ? true : false),
    800018d0:	00193913          	seqz	s2,s2
            myId(ID++)
    800018d4:	03248d23          	sb	s2,58(s1)
    800018d8:	0000a717          	auipc	a4,0xa
    800018dc:	41870713          	addi	a4,a4,1048 # 8000bcf0 <_ZN3TCB14blockedBarrierE>
    800018e0:	01072783          	lw	a5,16(a4)
    800018e4:	0017869b          	addiw	a3,a5,1
    800018e8:	00d72823          	sw	a3,16(a4)
    800018ec:	02f4ae23          	sw	a5,60(s1)
    List() : head(0), tail(0) {}
    800018f0:	0404b023          	sd	zero,64(s1)
    800018f4:	0404b423          	sd	zero,72(s1)
    bool isMain() const{ return main;}
    800018f8:	00197913          	andi	s2,s2,1
    if(!newTCB->isMain())
    800018fc:	02090663          	beqz	s2,80001928 <_ZN3TCB12createThreadEPFvPvES0_+0xd0>
}
    80001900:	00048513          	mv	a0,s1
    80001904:	02813083          	ld	ra,40(sp)
    80001908:	02013403          	ld	s0,32(sp)
    8000190c:	01813483          	ld	s1,24(sp)
    80001910:	01013903          	ld	s2,16(sp)
    80001914:	00813983          	ld	s3,8(sp)
    80001918:	03010113          	addi	sp,sp,48
    8000191c:	00008067          	ret
        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001920:	00000513          	li	a0,0
    80001924:	f95ff06f          	j	800018b8 <_ZN3TCB12createThreadEPFvPvES0_+0x60>
    Scheduler::put(newTCB);
    80001928:	00048513          	mv	a0,s1
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	dec080e7          	jalr	-532(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>
    return newTCB;
    80001934:	fcdff06f          	j	80001900 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    80001938:	00050913          	mv	s2,a0
    TCB* newTCB = new TCB(body, arg);
    8000193c:	00048513          	mv	a0,s1
    80001940:	00000097          	auipc	ra,0x0
    80001944:	24c080e7          	jalr	588(ra) # 80001b8c <_ZdlPv>
    80001948:	00090513          	mv	a0,s2
    8000194c:	0000b097          	auipc	ra,0xb
    80001950:	50c080e7          	jalr	1292(ra) # 8000ce58 <_Unwind_Resume>

0000000080001954 <_ZN3TCB10exitThreadEv>:
    if(!running->isFinished()) {
    80001954:	0000a797          	auipc	a5,0xa
    80001958:	3b47b783          	ld	a5,948(a5) # 8000bd08 <_ZN3TCB7runningE>
    bool isFinished() const { return finished;}
    8000195c:	0387c703          	lbu	a4,56(a5)
    80001960:	02071c63          	bnez	a4,80001998 <_ZN3TCB10exitThreadEv+0x44>
int TCB::exitThread() {
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    void setFinished(bool value){ TCB::finished = value; }
    80001974:	00100713          	li	a4,1
    80001978:	02e78c23          	sb	a4,56(a5)
        TCB::dispatch();
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	e50080e7          	jalr	-432(ra) # 800017cc <_ZN3TCB8dispatchEv>
        return 0;
    80001984:	00000513          	li	a0,0
}
    80001988:	00813083          	ld	ra,8(sp)
    8000198c:	00013403          	ld	s0,0(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret
    } else return -1;
    80001998:	fff00513          	li	a0,-1
}
    8000199c:	00008067          	ret

00000000800019a0 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished;}
    800019a0:	03854783          	lbu	a5,56(a0) # 8038 <_entry-0x7fff7fc8>
    if(!t->isFinished()) {
    800019a4:	00078463          	beqz	a5,800019ac <_ZN3TCB4joinEPS_+0xc>
    800019a8:	00008067          	ret
void TCB::join(TCB* t) {
    800019ac:	fe010113          	addi	sp,sp,-32
    800019b0:	00113c23          	sd	ra,24(sp)
    800019b4:	00813823          	sd	s0,16(sp)
    800019b8:	00913423          	sd	s1,8(sp)
    800019bc:	01213023          	sd	s2,0(sp)
    800019c0:	02010413          	addi	s0,sp,32
    800019c4:	00050493          	mv	s1,a0
        running->setBlocked(true);
    800019c8:	0000a917          	auipc	s2,0xa
    800019cc:	34093903          	ld	s2,832(s2) # 8000bd08 <_ZN3TCB7runningE>
    void setBlocked(bool blocked) { TCB::blocked = blocked;}
    800019d0:	00100793          	li	a5,1
    800019d4:	02f90ca3          	sb	a5,57(s2)
        Elem *elem = new Elem(data, 0);
    800019d8:	01000513          	li	a0,16
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	160080e7          	jalr	352(ra) # 80001b3c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800019e4:	01253023          	sd	s2,0(a0)
    800019e8:	00053423          	sd	zero,8(a0)
        if (tail)
    800019ec:	0484b783          	ld	a5,72(s1)
    800019f0:	02078263          	beqz	a5,80001a14 <_ZN3TCB4joinEPS_+0x74>
            tail->next = elem;
    800019f4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800019f8:	04a4b423          	sd	a0,72(s1)
}
    800019fc:	01813083          	ld	ra,24(sp)
    80001a00:	01013403          	ld	s0,16(sp)
    80001a04:	00813483          	ld	s1,8(sp)
    80001a08:	00013903          	ld	s2,0(sp)
    80001a0c:	02010113          	addi	sp,sp,32
    80001a10:	00008067          	ret
            head = tail = elem;
    80001a14:	04a4b423          	sd	a0,72(s1)
    80001a18:	04a4b023          	sd	a0,64(s1)
    80001a1c:	fe1ff06f          	j	800019fc <_ZN3TCB4joinEPS_+0x5c>

0000000080001a20 <_ZN3TCB7releaseEv>:
{
    80001a20:	fe010113          	addi	sp,sp,-32
    80001a24:	00113c23          	sd	ra,24(sp)
    80001a28:	00813823          	sd	s0,16(sp)
    80001a2c:	00913423          	sd	s1,8(sp)
    80001a30:	01213023          	sd	s2,0(sp)
    80001a34:	02010413          	addi	s0,sp,32
    80001a38:	00050493          	mv	s1,a0
    80001a3c:	0240006f          	j	80001a60 <_ZN3TCB7releaseEv+0x40>
        if (!head) { tail = 0; }
    80001a40:	0404b423          	sd	zero,72(s1)
        T *ret = elem->data;
    80001a44:	00053903          	ld	s2,0(a0)
        delete elem;
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	144080e7          	jalr	324(ra) # 80001b8c <_ZdlPv>
    80001a50:	02090ca3          	sb	zero,57(s2)
        Scheduler::put(t);
    80001a54:	00090513          	mv	a0,s2
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	cc0080e7          	jalr	-832(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>
        if(head) return true;
    80001a60:	0404b503          	ld	a0,64(s1)
    80001a64:	00050a63          	beqz	a0,80001a78 <_ZN3TCB7releaseEv+0x58>
        head = head->next;
    80001a68:	00853783          	ld	a5,8(a0)
    80001a6c:	04f4b023          	sd	a5,64(s1)
        if (!head) { tail = 0; }
    80001a70:	fc079ae3          	bnez	a5,80001a44 <_ZN3TCB7releaseEv+0x24>
    80001a74:	fcdff06f          	j	80001a40 <_ZN3TCB7releaseEv+0x20>
}
    80001a78:	01813083          	ld	ra,24(sp)
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	00813483          	ld	s1,8(sp)
    80001a84:	00013903          	ld	s2,0(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper( ){
    80001a90:	ff010113          	addi	sp,sp,-16
    80001a94:	00113423          	sd	ra,8(sp)
    80001a98:	00813023          	sd	s0,0(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	564080e7          	jalr	1380(ra) # 80002004 <_ZN5Riscv10popSppSpieEv>
    if(running->isMain()){
    80001aa8:	0000a797          	auipc	a5,0xa
    80001aac:	2607b783          	ld	a5,608(a5) # 8000bd08 <_ZN3TCB7runningE>
    bool isMain() const{ return main;}
    80001ab0:	03a7c703          	lbu	a4,58(a5)
    80001ab4:	04070263          	beqz	a4,80001af8 <_ZN3TCB13threadWrapperEv+0x68>
            running->threadHandle->run();
    80001ab8:	0007b503          	ld	a0,0(a5)
    80001abc:	00053783          	ld	a5,0(a0)
    80001ac0:	0107b783          	ld	a5,16(a5)
    80001ac4:	000780e7          	jalr	a5
    running->setFinished(true);
    80001ac8:	0000a517          	auipc	a0,0xa
    80001acc:	24053503          	ld	a0,576(a0) # 8000bd08 <_ZN3TCB7runningE>
    void setFinished(bool value){ TCB::finished = value; }
    80001ad0:	00100793          	li	a5,1
    80001ad4:	02f50c23          	sb	a5,56(a0)
    running->release();
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	f48080e7          	jalr	-184(ra) # 80001a20 <_ZN3TCB7releaseEv>
    TCB::yield();
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	cc8080e7          	jalr	-824(ra) # 800017a8 <_ZN3TCB5yieldEv>
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret
    running->body(running->arg);
    80001af8:	0087b703          	ld	a4,8(a5)
    80001afc:	0307b503          	ld	a0,48(a5)
    80001b00:	000700e7          	jalr	a4
    80001b04:	fc5ff06f          	j	80001ac8 <_ZN3TCB13threadWrapperEv+0x38>

0000000080001b08 <_GLOBAL__sub_I__ZN3TCB7runningE>:
}
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    80001b18:	000105b7          	lui	a1,0x10
    80001b1c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001b20:	00100513          	li	a0,1
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	b20080e7          	jalr	-1248(ra) # 80001644 <_Z41__static_initialization_and_destruction_0ii>
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret

0000000080001b3c <_Znwm>:
#include "../lib/mem.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"


void *operator new (size_t n) {
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00113423          	sd	ra,8(sp)
    80001b44:	00813023          	sd	s0,0(sp)
    80001b48:	01010413          	addi	s0,sp,16
    return MemoryAllocator::memalloc(n);
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	c6c080e7          	jalr	-916(ra) # 800027b8 <_ZN15MemoryAllocator8memallocEm>
  // return mem_alloc(n);
}
    80001b54:	00813083          	ld	ra,8(sp)
    80001b58:	00013403          	ld	s0,0(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret

0000000080001b64 <_Znam>:

void *operator new[] (size_t n) {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    //return mem_alloc(n);
    return MemoryAllocator::memalloc(n);
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	c44080e7          	jalr	-956(ra) # 800027b8 <_ZN15MemoryAllocator8memallocEm>
}
    80001b7c:	00813083          	ld	ra,8(sp)
    80001b80:	00013403          	ld	s0,0(sp)
    80001b84:	01010113          	addi	sp,sp,16
    80001b88:	00008067          	ret

0000000080001b8c <_ZdlPv>:

void operator delete (void *p) noexcept {
    80001b8c:	ff010113          	addi	sp,sp,-16
    80001b90:	00113423          	sd	ra,8(sp)
    80001b94:	00813023          	sd	s0,0(sp)
    80001b98:	01010413          	addi	s0,sp,16
   //mem_free(p);
  MemoryAllocator::memfree(p);
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	d88080e7          	jalr	-632(ra) # 80002924 <_ZN15MemoryAllocator7memfreeEPv>
}
    80001ba4:	00813083          	ld	ra,8(sp)
    80001ba8:	00013403          	ld	s0,0(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZdaPv>:

void operator delete[] (void *p) noexcept {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00113423          	sd	ra,8(sp)
    80001bbc:	00813023          	sd	s0,0(sp)
    80001bc0:	01010413          	addi	s0,sp,16
    //mem_free(p);
    MemoryAllocator::memfree(p);
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	d60080e7          	jalr	-672(ra) # 80002924 <_ZN15MemoryAllocator7memfreeEPv>
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN6ThreadD1Ev>:
   thread_create(&myHandle, nullptr, nullptr);

   myHandle->threadHandle = this;
}

Thread::~Thread() {
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	0000a797          	auipc	a5,0xa
    80001bf4:	db878793          	addi	a5,a5,-584 # 8000b9a8 <_ZTV6Thread+0x10>
    80001bf8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001bfc:	00853483          	ld	s1,8(a0)
    80001c00:	00048e63          	beqz	s1,80001c1c <_ZN6ThreadD1Ev+0x40>
    ~TCB() { MemoryAllocator::memfree(stack);}
    80001c04:	0104b503          	ld	a0,16(s1)
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	d1c080e7          	jalr	-740(ra) # 80002924 <_ZN15MemoryAllocator7memfreeEPv>
    80001c10:	00048513          	mv	a0,s1
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	f78080e7          	jalr	-136(ra) # 80001b8c <_ZdlPv>
}
    80001c1c:	01813083          	ld	ra,24(sp)
    80001c20:	01013403          	ld	s0,16(sp)
    80001c24:	00813483          	ld	s1,8(sp)
    80001c28:	02010113          	addi	sp,sp,32
    80001c2c:	00008067          	ret

0000000080001c30 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001c30:	fe010113          	addi	sp,sp,-32
    80001c34:	00113c23          	sd	ra,24(sp)
    80001c38:	00813823          	sd	s0,16(sp)
    80001c3c:	00913423          	sd	s1,8(sp)
    80001c40:	02010413          	addi	s0,sp,32
    80001c44:	00050493          	mv	s1,a0
}
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	f94080e7          	jalr	-108(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80001c50:	00048513          	mv	a0,s1
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	f38080e7          	jalr	-200(ra) # 80001b8c <_ZdlPv>
    80001c5c:	01813083          	ld	ra,24(sp)
    80001c60:	01013403          	ld	s0,16(sp)
    80001c64:	00813483          	ld	s1,8(sp)
    80001c68:	02010113          	addi	sp,sp,32
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);

}
Semaphore::~Semaphore (){
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    80001c80:	0000a797          	auipc	a5,0xa
    80001c84:	d5078793          	addi	a5,a5,-688 # 8000b9d0 <_ZTV9Semaphore+0x10>
    80001c88:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001c8c:	00853503          	ld	a0,8(a0)
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	72c080e7          	jalr	1836(ra) # 800013bc <_Z9sem_closeP3Sem>
}
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore (){
    80001ca8:	fe010113          	addi	sp,sp,-32
    80001cac:	00113c23          	sd	ra,24(sp)
    80001cb0:	00813823          	sd	s0,16(sp)
    80001cb4:	00913423          	sd	s1,8(sp)
    80001cb8:	02010413          	addi	s0,sp,32
    80001cbc:	00050493          	mv	s1,a0
}
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	fb0080e7          	jalr	-80(ra) # 80001c70 <_ZN9SemaphoreD1Ev>
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	ec0080e7          	jalr	-320(ra) # 80001b8c <_ZdlPv>
    80001cd4:	01813083          	ld	ra,24(sp)
    80001cd8:	01013403          	ld	s0,16(sp)
    80001cdc:	00813483          	ld	s1,8(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void(*body)(void*), void *arg ) {
    80001ce8:	fe010113          	addi	sp,sp,-32
    80001cec:	00113c23          	sd	ra,24(sp)
    80001cf0:	00813823          	sd	s0,16(sp)
    80001cf4:	00913423          	sd	s1,8(sp)
    80001cf8:	02010413          	addi	s0,sp,32
    80001cfc:	00050493          	mv	s1,a0
    80001d00:	0000a797          	auipc	a5,0xa
    80001d04:	ca878793          	addi	a5,a5,-856 # 8000b9a8 <_ZTV6Thread+0x10>
    80001d08:	00f53023          	sd	a5,0(a0)
this->body = body;
    80001d0c:	00b53823          	sd	a1,16(a0)
this->arg = arg;
    80001d10:	00c53c23          	sd	a2,24(a0)
    thread_create(&myHandle, this->body, this->arg);
    80001d14:	00850513          	addi	a0,a0,8
    80001d18:	fffff097          	auipc	ra,0xfffff
    80001d1c:	510080e7          	jalr	1296(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    myHandle->threadHandle = this;
    80001d20:	0084b783          	ld	a5,8(s1)
    80001d24:	0097b023          	sd	s1,0(a5)
}
    80001d28:	01813083          	ld	ra,24(sp)
    80001d2c:	01013403          	ld	s0,16(sp)
    80001d30:	00813483          	ld	s1,8(sp)
    80001d34:	02010113          	addi	sp,sp,32
    80001d38:	00008067          	ret

0000000080001d3c <_ZN6Thread10setRunningEPS_>:
void Thread::setRunning(Thread* thread) {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    TCB::running = thread->myHandle;
    80001d48:	00853703          	ld	a4,8(a0)
    80001d4c:	0000a797          	auipc	a5,0xa
    80001d50:	f2c7b783          	ld	a5,-212(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d54:	00e7b023          	sd	a4,0(a5)
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN6Thread7barrierEv>:
void Thread::barrier(){
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    _barrier();
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	5d4080e7          	jalr	1492(ra) # 80001348 <_Z8_barrierv>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	02010413          	addi	s0,sp,32
    80001da0:	00050493          	mv	s1,a0
    80001da4:	0000a797          	auipc	a5,0xa
    80001da8:	c0478793          	addi	a5,a5,-1020 # 8000b9a8 <_ZTV6Thread+0x10>
    80001dac:	00f53023          	sd	a5,0(a0)
   thread_create(&myHandle, nullptr, nullptr);
    80001db0:	00000613          	li	a2,0
    80001db4:	00000593          	li	a1,0
    80001db8:	00850513          	addi	a0,a0,8
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	46c080e7          	jalr	1132(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
   myHandle->threadHandle = this;
    80001dc4:	0084b783          	ld	a5,8(s1)
    80001dc8:	0097b023          	sd	s1,0(a5)
}
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00813483          	ld	s1,8(sp)
    80001dd8:	02010113          	addi	sp,sp,32
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN6Thread5startEv>:
int Thread::start() {
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
Scheduler::put(myHandle);
    80001df0:	00853503          	ld	a0,8(a0)
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	924080e7          	jalr	-1756(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>
}
    80001dfc:	00000513          	li	a0,0
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00113423          	sd	ra,8(sp)
    80001e18:	00813023          	sd	s0,0(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001e20:	fffff097          	auipc	ra,0xfffff
    80001e24:	484080e7          	jalr	1156(ra) # 800012a4 <_Z15thread_dispatchv>
}
    80001e28:	00813083          	ld	ra,8(sp)
    80001e2c:	00013403          	ld	s0,0(sp)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	00813023          	sd	s0,0(sp)
    80001e44:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001e48:	00853503          	ld	a0,8(a0)
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	48c080e7          	jalr	1164(ra) # 800012d8 <_Z11thread_joinP3TCB>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813423          	sd	s0,8(sp)
    80001e6c:	01010413          	addi	s0,sp,16
}
    80001e70:	00000513          	li	a0,0
    80001e74:	00813403          	ld	s0,8(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN6Thread7runWrapEPv>:
 if(thread!=nullptr) ((Thread* )thread)->run();
    80001e80:	02050863          	beqz	a0,80001eb0 <_ZN6Thread7runWrapEPv+0x30>
void Thread::runWrap(void *thread ) {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
 if(thread!=nullptr) ((Thread* )thread)->run();
    80001e94:	00053783          	ld	a5,0(a0)
    80001e98:	0107b783          	ld	a5,16(a5)
    80001e9c:	000780e7          	jalr	a5
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	0000a797          	auipc	a5,0xa
    80001ec8:	b0c78793          	addi	a5,a5,-1268 # 8000b9d0 <_ZTV9Semaphore+0x10>
    80001ecc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001ed0:	00850513          	addi	a0,a0,8
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	4a8080e7          	jalr	1192(ra) # 8000137c <_Z8sem_openPP3Semj>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00113423          	sd	ra,8(sp)
    80001ef4:	00813023          	sd	s0,0(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001efc:	00853503          	ld	a0,8(a0)
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	4f8080e7          	jalr	1272(ra) # 800013f8 <_Z8sem_waitP3Sem>
}
    80001f08:	00813083          	ld	ra,8(sp)
    80001f0c:	00013403          	ld	s0,0(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN9Semaphore6signalEv>:
int Semaphore::signal(){
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001f28:	00853503          	ld	a0,8(a0)
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	508080e7          	jalr	1288(ra) # 80001434 <_Z10sem_signalP3Sem>
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001f54:	00853503          	ld	a0,8(a0)
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	534080e7          	jalr	1332(ra) # 8000148c <_Z11sem_trywaitP3Sem>
}
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t time) {
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, time);
    80001f80:	00853503          	ld	a0,8(a0)
    80001f84:	fffff097          	auipc	ra,0xfffff
    80001f88:	4ec080e7          	jalr	1260(ra) # 80001470 <_Z13sem_timedwaitP3Semm>
}
    80001f8c:	00813083          	ld	ra,8(sp)
    80001f90:	00013403          	ld	s0,0(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret

0000000080001f9c <_ZN7Console4getcEv>:


//----------------------------------periodic thread-----------------------------------------

//----------------------------------console-------------------------------------------------
char Console::getc () {
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00113423          	sd	ra,8(sp)
    80001fa4:	00813023          	sd	s0,0(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    return ::getc();
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	538080e7          	jalr	1336(ra) # 800014e4 <_Z4getcv>
}
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN7Console4putcEc>:
void Console::putc (char c) {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	548080e7          	jalr	1352(ra) # 8000151c <_Z4putcc>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN6Thread3runEv>:
    void join();
    static void setRunning(Thread* thread);
    static void barrier();
protected:
    Thread();
    virtual void run() { }
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    80001ff8:	00813403          	ld	s0,8(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN5Riscv10popSppSpieEv>:
#include "../tests/printing.hpp"
#include "../h/sem.hpp"


void Riscv::popSppSpie()
{
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
 // Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002010:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002014:	10200073          	sret
}
    80002018:	00813403          	ld	s0,8(sp)
    8000201c:	01010113          	addi	sp,sp,16
    80002020:	00008067          	ret

0000000080002024 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*) (void*);



void Riscv::handleSupervisorTrap() {
    80002024:	fb010113          	addi	sp,sp,-80
    80002028:	04113423          	sd	ra,72(sp)
    8000202c:	04813023          	sd	s0,64(sp)
    80002030:	02913c23          	sd	s1,56(sp)
    80002034:	03213823          	sd	s2,48(sp)
    80002038:	03313423          	sd	s3,40(sp)
    8000203c:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002040:	142027f3          	csrr	a5,scause
    80002044:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002048:	fb043483          	ld	s1,-80(s0)

    uint64 scause = r_scause();
    uint64 code;
    __asm__ volatile ("mv %0, a0" : "=r"(code));
    8000204c:	00050793          	mv	a5,a0
////        uint64 sstatus = r_sstatus();
////        sstatus = 32;
////        w_sstatus(sstatus);
////        w_sepc(sepc);
//    } else
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002050:	ff848713          	addi	a4,s1,-8
    80002054:	00100793          	li	a5,1
    80002058:	06e7fa63          	bgeu	a5,a4,800020cc <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
                    break;
            }
            w_sepc(sepc);
            w_sstatus(sstatus);

    }else if(scause == 0x8000000000000001UL){
    8000205c:	fff00793          	li	a5,-1
    80002060:	03f79793          	slli	a5,a5,0x3f
    80002064:	00178793          	addi	a5,a5,1
    80002068:	28f48863          	beq	s1,a5,800022f8 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
            TCB::readyToPrintA = true;
            TCB::readyToPrintB = true;
            TCB::readyToPrintC = true;
            TCB::timeSliceCounter = 0;
        }
    } else if(scause == 0x8000000000000009UL){
    8000206c:	fff00793          	li	a5,-1
    80002070:	03f79793          	slli	a5,a5,0x3f
    80002074:	00978793          	addi	a5,a5,9
    80002078:	30f48663          	beq	s1,a5,80002384 <_ZN5Riscv20handleSupervisorTrapEv+0x360>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000207c:	141027f3          	csrr	a5,sepc
    80002080:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002084:	fc843903          	ld	s2,-56(s0)
        console_handler();
    } else {
        //unexpected trap cause
        // print scause, sepc, stval
        uint64 s = r_sepc();
if(scause == 0x0000000000000002UL) printString("Greska! Nelegalna instrukcija! sepc :");
    80002088:	00200793          	li	a5,2
    8000208c:	30f48263          	beq	s1,a5,80002390 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
        if(scause == 0x0000000000000005UL) printString("Greska! Nedozvoljena adresa citanja! sepc :");
    80002090:	00500793          	li	a5,5
    80002094:	30f48863          	beq	s1,a5,800023a4 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
        if(scause == 0x0000000000000007UL) printString("Greska! Nedozvoljena adresa upisa! sepc :");
    80002098:	00700793          	li	a5,7
    8000209c:	30f48e63          	beq	s1,a5,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x394>
        printInt(s);
    800020a0:	00000613          	li	a2,0
    800020a4:	00a00593          	li	a1,10
    800020a8:	0009051b          	sext.w	a0,s2
    800020ac:	00003097          	auipc	ra,0x3
    800020b0:	f80080e7          	jalr	-128(ra) # 8000502c <_Z8printIntiii>
        printString("\n");
    800020b4:	00007517          	auipc	a0,0x7
    800020b8:	6e450513          	addi	a0,a0,1764 # 80009798 <CONSOLE_STATUS+0x788>
    800020bc:	00003097          	auipc	ra,0x3
    800020c0:	dc0080e7          	jalr	-576(ra) # 80004e7c <_Z11printStringPKc>

        for(int i = 0; i < 10000; i++){
    800020c4:	00000693          	li	a3,0
    800020c8:	3080006f          	j	800023d0 <_ZN5Riscv20handleSupervisorTrapEv+0x3ac>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020cc:	141027f3          	csrr	a5,sepc
    800020d0:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    800020d4:	fc043483          	ld	s1,-64(s0)
        uint64 sepc = r_sepc() + 4;
    800020d8:	00448493          	addi	s1,s1,4

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020dc:	100027f3          	csrr	a5,sstatus
    800020e0:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800020e4:	fb843903          	ld	s2,-72(s0)
        __asm__ volatile ("mv %0, a0" : "=r"(codde));
    800020e8:	00050793          	mv	a5,a0
            switch (codde) {
    800020ec:	04200713          	li	a4,66
    800020f0:	02f76a63          	bltu	a4,a5,80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    800020f4:	00279793          	slli	a5,a5,0x2
    800020f8:	00007717          	auipc	a4,0x7
    800020fc:	fac70713          	addi	a4,a4,-84 # 800090a4 <CONSOLE_STATUS+0x94>
    80002100:	00e787b3          	add	a5,a5,a4
    80002104:	0007a783          	lw	a5,0(a5)
    80002108:	00e787b3          	add	a5,a5,a4
    8000210c:	00078067          	jr	a5
                    __asm__ volatile("mv %0, a1" : "=r" (blkNum));
    80002110:	00058513          	mv	a0,a1
                    addr = MemoryAllocator::memalloc(blkNum);
    80002114:	00000097          	auipc	ra,0x0
    80002118:	6a4080e7          	jalr	1700(ra) # 800027b8 <_ZN15MemoryAllocator8memallocEm>
                    __asm__ volatile("mv a0, %0" : : "r"(addr));
    8000211c:	00050513          	mv	a0,a0
                    __asm__ volatile("sd a0, 80(s0)" );
    80002120:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002124:	14149073          	csrw	sepc,s1
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002128:	10091073          	csrw	sstatus,s2
            for (int j = 0; j < 10000; j++ ) {}
        }


    }
    8000212c:	04813083          	ld	ra,72(sp)
    80002130:	04013403          	ld	s0,64(sp)
    80002134:	03813483          	ld	s1,56(sp)
    80002138:	03013903          	ld	s2,48(sp)
    8000213c:	02813983          	ld	s3,40(sp)
    80002140:	05010113          	addi	sp,sp,80
    80002144:	00008067          	ret
                    __asm__ volatile("mv %0, a1" : "=r" (addrf));
    80002148:	00058513          	mv	a0,a1
                    retFreeMem = MemoryAllocator::memfree(addrf);
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	7d8080e7          	jalr	2008(ra) # 80002924 <_ZN15MemoryAllocator7memfreeEPv>
                    __asm__ volatile("mv a0, %0" : : "r"(retFreeMem));
    80002154:	00050513          	mv	a0,a0
                    __asm__ volatile("sd a0, 80(s0)" );
    80002158:	04a43823          	sd	a0,80(s0)
                    break;
    8000215c:	fc9ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80002160:	00058993          	mv	s3,a1
                    __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002164:	00060513          	mv	a0,a2
                    __asm__ volatile ("mv %0, a7" : "=r" (args));
    80002168:	00088593          	mv	a1,a7
                    *tcb = TCB::createThread(body, args);
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	6ec080e7          	jalr	1772(ra) # 80001858 <_ZN3TCB12createThreadEPFvPvES0_>
    80002174:	00a9b023          	sd	a0,0(s3)
                    if (tcb == nullptr) tRet = -1;
    80002178:	00098a63          	beqz	s3,8000218c <_ZN5Riscv20handleSupervisorTrapEv+0x168>
                    else tRet = 0;
    8000217c:	00000793          	li	a5,0
                    __asm__ volatile("mv a0, %0" : : "r"(tRet));
    80002180:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    80002184:	04a43823          	sd	a0,80(s0)
                    break;
    80002188:	f9dff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    if (tcb == nullptr) tRet = -1;
    8000218c:	fff00793          	li	a5,-1
    80002190:	ff1ff06f          	j	80002180 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                    TCB::dispatch();
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	638080e7          	jalr	1592(ra) # 800017cc <_ZN3TCB8dispatchEv>
                    break;
    8000219c:	f89ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    e = TCB::exitThread();
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	7b4080e7          	jalr	1972(ra) # 80001954 <_ZN3TCB10exitThreadEv>
                    __asm__ volatile("mv a0, %0" : : "r"(e));
    800021a8:	00050513          	mv	a0,a0
                    __asm__ volatile("sd a0, 80(s0)" );
    800021ac:	04a43823          	sd	a0,80(s0)
                    break;
    800021b0:	f75ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    __asm__ volatile("mv %0, a1" : "=r"(handle));
    800021b4:	00058513          	mv	a0,a1
                    TCB::join(handle);
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	7e8080e7          	jalr	2024(ra) # 800019a0 <_ZN3TCB4joinEPS_>
                    TCB::dispatch();
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	60c080e7          	jalr	1548(ra) # 800017cc <_ZN3TCB8dispatchEv>
                    break;
    800021c8:	f5dff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    static int getId() { return running->myId;};
    800021cc:	0000a797          	auipc	a5,0xa
    800021d0:	aac7b783          	ld	a5,-1364(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x48>
    800021d4:	0007b783          	ld	a5,0(a5)
    800021d8:	03c7a783          	lw	a5,60(a5)
                    __asm__ volatile("mv a0, %0" : : "r"(id));
    800021dc:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    800021e0:	04a43823          	sd	a0,80(s0)
                    TCB::dispatch();
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	5e8080e7          	jalr	1512(ra) # 800017cc <_ZN3TCB8dispatchEv>
                    break;
    800021ec:	f39ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    TCB::barrier();
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	494080e7          	jalr	1172(ra) # 80001684 <_ZN3TCB7barrierEv>
                    break;
    800021f8:	f2dff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    __asm__ volatile("mv %0, a1" : "=r" (c));
    800021fc:	00058513          	mv	a0,a1
                    __putc(c);
    80002200:	0ff57513          	andi	a0,a0,255
    80002204:	00006097          	auipc	ra,0x6
    80002208:	7b8080e7          	jalr	1976(ra) # 800089bc <__putc>
                    break;
    8000220c:	f19ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    c1 = __getc();
    80002210:	00006097          	auipc	ra,0x6
    80002214:	7e8080e7          	jalr	2024(ra) # 800089f8 <__getc>
                    __asm__ volatile ("mv a0, %0"::"r" (c1));
    80002218:	00050513          	mv	a0,a0
                    __asm__ volatile("sd a0, 80(s0)" );
    8000221c:	04a43823          	sd	a0,80(s0)
                    break;
    80002220:	f05ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    __asm__ volatile("mv %0, a2" : "=r"(init));
    80002224:	00060513          	mv	a0,a2
    80002228:	0005051b          	sext.w	a0,a0
                    __asm__ volatile("mv %0, a1" : "=r" (handleOpen));
    8000222c:	00058993          	mv	s3,a1
                    *handleOpen = Sem::open(init);
    80002230:	00000097          	auipc	ra,0x0
    80002234:	1c4080e7          	jalr	452(ra) # 800023f4 <_ZN3Sem4openEj>
    80002238:	00a9b023          	sd	a0,0(s3)
                    if (*handleOpen == nullptr) oRet = -1;
    8000223c:	00050a63          	beqz	a0,80002250 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                    else oRet = 0;
    80002240:	00000793          	li	a5,0
                    __asm__ volatile ("mv a0, %0"::"r" (oRet));
    80002244:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    80002248:	04a43823          	sd	a0,80(s0)
                    break;
    8000224c:	ed9ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    if (*handleOpen == nullptr) oRet = -1;
    80002250:	fff00793          	li	a5,-1
    80002254:	ff1ff06f          	j	80002244 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
                    __asm__ volatile("mv %0, a1" : "=r" (handleClose));
    80002258:	00058513          	mv	a0,a1
                    if (handleClose == nullptr) cRet = -1;
    8000225c:	00050e63          	beqz	a0,80002278 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                    else cRet = handleClose->close();
    80002260:	00000097          	auipc	ra,0x0
    80002264:	1dc080e7          	jalr	476(ra) # 8000243c <_ZN3Sem5closeEv>
    80002268:	00050793          	mv	a5,a0
                    __asm__ volatile("mv a0, %0" : : "r"(cRet));
    8000226c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    80002270:	04a43823          	sd	a0,80(s0)
                    break;
    80002274:	eb1ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    if (handleClose == nullptr) cRet = -1;
    80002278:	fff00793          	li	a5,-1
    8000227c:	ff1ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0x248>
                    __asm__ volatile("mv %0, a1" : "=r" (handleWait));
    80002280:	00058513          	mv	a0,a1
                    if (handleWait == nullptr) wRet = -1;
    80002284:	00050e63          	beqz	a0,800022a0 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
                    else wRet = handleWait->wait();
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	23c080e7          	jalr	572(ra) # 800024c4 <_ZN3Sem4waitEv>
    80002290:	00050793          	mv	a5,a0
                    __asm__ volatile("mv a0, %0" : : "r"(wRet));
    80002294:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    80002298:	04a43823          	sd	a0,80(s0)
                    break;
    8000229c:	e89ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    if (handleWait == nullptr) wRet = -1;
    800022a0:	fff00793          	li	a5,-1
    800022a4:	ff1ff06f          	j	80002294 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                    __asm__ volatile("mv %0, a1" : "=r" (handleSignal));
    800022a8:	00058513          	mv	a0,a1
                    if (handleSignal == nullptr) sRet = -1;
    800022ac:	00050e63          	beqz	a0,800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0x2a4>
                    else sRet = handleSignal->signal();
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	2c8080e7          	jalr	712(ra) # 80002578 <_ZN3Sem6signalEv>
    800022b8:	00050793          	mv	a5,a0
                    __asm__ volatile("mv a0, %0" : : "r"(sRet));
    800022bc:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    800022c0:	04a43823          	sd	a0,80(s0)
                    break;
    800022c4:	e61ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    if (handleSignal == nullptr) sRet = -1;
    800022c8:	fff00793          	li	a5,-1
    800022cc:	ff1ff06f          	j	800022bc <_ZN5Riscv20handleSupervisorTrapEv+0x298>
                    __asm__ volatile("mv %0, a1" : "=r" (handleTrywait));
    800022d0:	00058513          	mv	a0,a1
                    if (handleTrywait) twRet = -1;
    800022d4:	00050a63          	beqz	a0,800022e8 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
    800022d8:	fff00793          	li	a5,-1
                    __asm__ volatile("mv a0, %0" : : "r"(twRet));
    800022dc:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0, 80(s0)" );
    800022e0:	04a43823          	sd	a0,80(s0)
                    break;
    800022e4:	e41ff06f          	j	80002124 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
                    else twRet = handleTrywait->trywait();
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	31c080e7          	jalr	796(ra) # 80002604 <_ZN3Sem7trywaitEv>
    800022f0:	00050793          	mv	a5,a0
    800022f4:	fe9ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800022f8:	00200793          	li	a5,2
    800022fc:	1447b073          	csrc	sip,a5
        if(TCB::timeSliceCounter++ >= 10 && !(TCB::readyToPrintA || TCB::readyToPrintB || TCB::readyToPrintC)) {
    80002300:	0000a717          	auipc	a4,0xa
    80002304:	95873703          	ld	a4,-1704(a4) # 8000bc58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002308:	00072783          	lw	a5,0(a4)
    8000230c:	0017869b          	addiw	a3,a5,1
    80002310:	00d72023          	sw	a3,0(a4)
    80002314:	00900713          	li	a4,9
    80002318:	e0f75ae3          	bge	a4,a5,8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    8000231c:	0000a797          	auipc	a5,0xa
    80002320:	9547b783          	ld	a5,-1708(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002324:	0007c783          	lbu	a5,0(a5)
    80002328:	e00792e3          	bnez	a5,8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    8000232c:	0000a797          	auipc	a5,0xa
    80002330:	93c7b783          	ld	a5,-1732(a5) # 8000bc68 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002334:	0007c783          	lbu	a5,0(a5)
    80002338:	de079ae3          	bnez	a5,8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    8000233c:	0000a797          	auipc	a5,0xa
    80002340:	9147b783          	ld	a5,-1772(a5) # 8000bc50 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002344:	0007c783          	lbu	a5,0(a5)
    80002348:	de0792e3          	bnez	a5,8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            TCB::readyToPrintA = true;
    8000234c:	00100793          	li	a5,1
    80002350:	0000a717          	auipc	a4,0xa
    80002354:	92073703          	ld	a4,-1760(a4) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002358:	00f70023          	sb	a5,0(a4)
            TCB::readyToPrintB = true;
    8000235c:	0000a717          	auipc	a4,0xa
    80002360:	90c73703          	ld	a4,-1780(a4) # 8000bc68 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002364:	00f70023          	sb	a5,0(a4)
            TCB::readyToPrintC = true;
    80002368:	0000a717          	auipc	a4,0xa
    8000236c:	8e873703          	ld	a4,-1816(a4) # 8000bc50 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002370:	00f70023          	sb	a5,0(a4)
            TCB::timeSliceCounter = 0;
    80002374:	0000a797          	auipc	a5,0xa
    80002378:	8e47b783          	ld	a5,-1820(a5) # 8000bc58 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000237c:	0007a023          	sw	zero,0(a5)
    80002380:	dadff06f          	j	8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        console_handler();
    80002384:	00006097          	auipc	ra,0x6
    80002388:	6ac080e7          	jalr	1708(ra) # 80008a30 <console_handler>
    8000238c:	da1ff06f          	j	8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
if(scause == 0x0000000000000002UL) printString("Greska! Nelegalna instrukcija! sepc :");
    80002390:	00007517          	auipc	a0,0x7
    80002394:	c9050513          	addi	a0,a0,-880 # 80009020 <CONSOLE_STATUS+0x10>
    80002398:	00003097          	auipc	ra,0x3
    8000239c:	ae4080e7          	jalr	-1308(ra) # 80004e7c <_Z11printStringPKc>
    800023a0:	cf1ff06f          	j	80002090 <_ZN5Riscv20handleSupervisorTrapEv+0x6c>
        if(scause == 0x0000000000000005UL) printString("Greska! Nedozvoljena adresa citanja! sepc :");
    800023a4:	00007517          	auipc	a0,0x7
    800023a8:	ca450513          	addi	a0,a0,-860 # 80009048 <CONSOLE_STATUS+0x38>
    800023ac:	00003097          	auipc	ra,0x3
    800023b0:	ad0080e7          	jalr	-1328(ra) # 80004e7c <_Z11printStringPKc>
    800023b4:	ce5ff06f          	j	80002098 <_ZN5Riscv20handleSupervisorTrapEv+0x74>
        if(scause == 0x0000000000000007UL) printString("Greska! Nedozvoljena adresa upisa! sepc :");
    800023b8:	00007517          	auipc	a0,0x7
    800023bc:	cc050513          	addi	a0,a0,-832 # 80009078 <CONSOLE_STATUS+0x68>
    800023c0:	00003097          	auipc	ra,0x3
    800023c4:	abc080e7          	jalr	-1348(ra) # 80004e7c <_Z11printStringPKc>
    800023c8:	cd9ff06f          	j	800020a0 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>
        for(int i = 0; i < 10000; i++){
    800023cc:	0016869b          	addiw	a3,a3,1
    800023d0:	000027b7          	lui	a5,0x2
    800023d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800023d8:	d4d7cae3          	blt	a5,a3,8000212c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            for (int j = 0; j < 10000; j++ ) {}
    800023dc:	00000713          	li	a4,0
    800023e0:	000027b7          	lui	a5,0x2
    800023e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800023e8:	fee7c2e3          	blt	a5,a4,800023cc <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
    800023ec:	0017071b          	addiw	a4,a4,1
    800023f0:	ff1ff06f          	j	800023e0 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>

00000000800023f4 <_ZN3Sem4openEj>:
// Created by os on 6/17/24.
//

#include "../h/sem.hpp"

Sem* Sem::open(unsigned int i){
    800023f4:	fe010113          	addi	sp,sp,-32
    800023f8:	00113c23          	sd	ra,24(sp)
    800023fc:	00813823          	sd	s0,16(sp)
    80002400:	00913423          	sd	s1,8(sp)
    80002404:	02010413          	addi	s0,sp,32
    80002408:	00050493          	mv	s1,a0
    return new Sem(i);
    8000240c:	02000513          	li	a0,32
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	72c080e7          	jalr	1836(ra) # 80001b3c <_Znwm>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002418:	00053423          	sd	zero,8(a0)
    8000241c:	00053823          	sd	zero,16(a0)

class Sem {
public:

    Sem (int init = 1) {
        this->value = init;
    80002420:	00952023          	sw	s1,0(a0)
    enum State {
        OPENED,
        CLOSED
    };

void setState(State state) {this->state = state;}
    80002424:	00052c23          	sw	zero,24(a0)
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <_ZN3Sem5closeEv>:

int Sem::close(){
    8000243c:	fe010113          	addi	sp,sp,-32
    80002440:	00113c23          	sd	ra,24(sp)
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00913423          	sd	s1,8(sp)
    8000244c:	01213023          	sd	s2,0(sp)
    80002450:	02010413          	addi	s0,sp,32
    80002454:	00050493          	mv	s1,a0
State getState() {return state;}
    80002458:	01852783          	lw	a5,24(a0)
    if(getState() == OPENED){
    8000245c:	04078863          	beqz	a5,800024ac <_ZN3Sem5closeEv+0x70>
            t->setFinished(false);
            Scheduler::put(t);
        }
        setState(CLOSED);
        return 0;
    } else return -1;
    80002460:	fff00513          	li	a0,-1
    80002464:	0100006f          	j	80002474 <_ZN3Sem5closeEv+0x38>
void setState(State state) {this->state = state;}
    80002468:	00100793          	li	a5,1
    8000246c:	00f4ac23          	sw	a5,24(s1)
        return 0;
    80002470:	00000513          	li	a0,0
}
    80002474:	01813083          	ld	ra,24(sp)
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	00813483          	ld	s1,8(sp)
    80002480:	00013903          	ld	s2,0(sp)
    80002484:	02010113          	addi	sp,sp,32
    80002488:	00008067          	ret
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    8000248c:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80002490:	00053903          	ld	s2,0(a0)
        delete elem;
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	6f8080e7          	jalr	1784(ra) # 80001b8c <_ZdlPv>
    static bool readyToPrintC;
    static int timeSliceCounter;
    //Thread* threadHandle;
    ~TCB() { MemoryAllocator::memfree(stack);}
    bool isFinished() const { return finished;}
    void setFinished(bool value){ TCB::finished = value; }
    8000249c:	02090c23          	sb	zero,56(s2)
            Scheduler::put(t);
    800024a0:	00090513          	mv	a0,s2
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	274080e7          	jalr	628(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>
        if (!tail) { return 0; }
        return tail->data;
    }

    bool hasElem(){
        if(head) return true;
    800024ac:	0084b503          	ld	a0,8(s1)
    800024b0:	fa050ce3          	beqz	a0,80002468 <_ZN3Sem5closeEv+0x2c>
        head = head->next;
    800024b4:	00853783          	ld	a5,8(a0)
    800024b8:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800024bc:	fc079ae3          	bnez	a5,80002490 <_ZN3Sem5closeEv+0x54>
    800024c0:	fcdff06f          	j	8000248c <_ZN3Sem5closeEv+0x50>

00000000800024c4 <_ZN3Sem4waitEv>:
State getState() {return state;}
    800024c4:	01852783          	lw	a5,24(a0)

int Sem::wait() {
    if(getState()==OPENED) {
    800024c8:	0a079463          	bnez	a5,80002570 <_ZN3Sem4waitEv+0xac>
int Sem::wait() {
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00113c23          	sd	ra,24(sp)
    800024d4:	00813823          	sd	s0,16(sp)
    800024d8:	00913423          	sd	s1,8(sp)
    800024dc:	01213023          	sd	s2,0(sp)
    800024e0:	02010413          	addi	s0,sp,32
    800024e4:	00050493          	mv	s1,a0
        if (value <= 0) {
    800024e8:	00052783          	lw	a5,0(a0)
    800024ec:	02f05463          	blez	a5,80002514 <_ZN3Sem4waitEv+0x50>

            TCB::running->setBlocked(true);
            //thread_dispatch();
            TCB::dispatch();
        } else {
            value -= 1;
    800024f0:	fff7879b          	addiw	a5,a5,-1
    800024f4:	00f52023          	sw	a5,0(a0)
        }

        return 0;
    800024f8:	00000513          	li	a0,0
    } else return -1;
}
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	00013903          	ld	s2,0(sp)
    8000250c:	02010113          	addi	sp,sp,32
    80002510:	00008067          	ret
            blockedThreads.addLast(TCB::running);
    80002514:	00009797          	auipc	a5,0x9
    80002518:	7647b783          	ld	a5,1892(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000251c:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80002520:	01000513          	li	a0,16
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	618080e7          	jalr	1560(ra) # 80001b3c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000252c:	01253023          	sd	s2,0(a0)
    80002530:	00053423          	sd	zero,8(a0)
        if (tail)
    80002534:	0104b783          	ld	a5,16(s1)
    80002538:	02078663          	beqz	a5,80002564 <_ZN3Sem4waitEv+0xa0>
            tail->next = elem;
    8000253c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002540:	00a4b823          	sd	a0,16(s1)
            TCB::running->setBlocked(true);
    80002544:	00009797          	auipc	a5,0x9
    80002548:	7347b783          	ld	a5,1844(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000254c:	0007b783          	ld	a5,0(a5)

    bool isBlocked() const { return blocked;}
    void setBlocked(bool blocked) { TCB::blocked = blocked;}
    80002550:	00100713          	li	a4,1
    80002554:	02e78ca3          	sb	a4,57(a5)
            TCB::dispatch();
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	274080e7          	jalr	628(ra) # 800017cc <_ZN3TCB8dispatchEv>
    80002560:	f99ff06f          	j	800024f8 <_ZN3Sem4waitEv+0x34>
            head = tail = elem;
    80002564:	00a4b823          	sd	a0,16(s1)
    80002568:	00a4b423          	sd	a0,8(s1)
    8000256c:	fd9ff06f          	j	80002544 <_ZN3Sem4waitEv+0x80>
    } else return -1;
    80002570:	fff00513          	li	a0,-1
}
    80002574:	00008067          	ret

0000000080002578 <_ZN3Sem6signalEv>:
    80002578:	01852703          	lw	a4,24(a0)

int Sem::signal() {
    if(getState() == OPENED) {
    8000257c:	06071663          	bnez	a4,800025e8 <_ZN3Sem6signalEv+0x70>
    80002580:	00050793          	mv	a5,a0
        if(head) return true;
    80002584:	00853503          	ld	a0,8(a0)
    80002588:	06050463          	beqz	a0,800025f0 <_ZN3Sem6signalEv+0x78>
int Sem::signal() {
    8000258c:	fe010113          	addi	sp,sp,-32
    80002590:	00113c23          	sd	ra,24(sp)
    80002594:	00813823          	sd	s0,16(sp)
    80002598:	00913423          	sd	s1,8(sp)
    8000259c:	02010413          	addi	s0,sp,32
        head = head->next;
    800025a0:	00853703          	ld	a4,8(a0)
    800025a4:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800025a8:	02070c63          	beqz	a4,800025e0 <_ZN3Sem6signalEv+0x68>
        T *ret = elem->data;
    800025ac:	00053483          	ld	s1,0(a0)
        delete elem;
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	5dc080e7          	jalr	1500(ra) # 80001b8c <_ZdlPv>
    800025b8:	02048ca3          	sb	zero,57(s1)
        if (blockedThreads.hasElem()) {
            TCB* t = blockedThreads.removeFirst();

            t->setBlocked(false);
            Scheduler::put(t);
    800025bc:	00048513          	mv	a0,s1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	158080e7          	jalr	344(ra) # 80002718 <_ZN9Scheduler3putEP3TCB>

        } else {
            value += 1;
        }

        return 0;
    800025c8:	00000513          	li	a0,0
    }else return -1;
}
    800025cc:	01813083          	ld	ra,24(sp)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret
        if (!head) { tail = 0; }
    800025e0:	0007b823          	sd	zero,16(a5)
    800025e4:	fc9ff06f          	j	800025ac <_ZN3Sem6signalEv+0x34>
    }else return -1;
    800025e8:	fff00513          	li	a0,-1
    800025ec:	00008067          	ret
            value += 1;
    800025f0:	0007a703          	lw	a4,0(a5)
    800025f4:	0017071b          	addiw	a4,a4,1
    800025f8:	00e7a023          	sw	a4,0(a5)
        return 0;
    800025fc:	00000513          	li	a0,0
}
    80002600:	00008067          	ret

0000000080002604 <_ZN3Sem7trywaitEv>:

int Sem::trywait() {
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813423          	sd	s0,8(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	01852783          	lw	a5,24(a0)
    if(getState() == OPENED){
    80002614:	02079263          	bnez	a5,80002638 <_ZN3Sem7trywaitEv+0x34>
        if(value >0) {
    80002618:	00052783          	lw	a5,0(a0)
    8000261c:	02f05263          	blez	a5,80002640 <_ZN3Sem7trywaitEv+0x3c>
            value -=1;
    80002620:	fff7879b          	addiw	a5,a5,-1
    80002624:	00f52023          	sw	a5,0(a0)
            return 0;}
    80002628:	00000513          	li	a0,0
        else return 1;
    } else return -1;
}
    8000262c:	00813403          	ld	s0,8(sp)
    80002630:	01010113          	addi	sp,sp,16
    80002634:	00008067          	ret
    } else return -1;
    80002638:	fff00513          	li	a0,-1
    8000263c:	ff1ff06f          	j	8000262c <_ZN3Sem7trywaitEv+0x28>
        else return 1;
    80002640:	00100513          	li	a0,1
    80002644:	fe9ff06f          	j	8000262c <_ZN3Sem7trywaitEv+0x28>

0000000080002648 <_ZN3SemD1Ev>:


Sem::~Sem() {
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    close();
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	de4080e7          	jalr	-540(ra) # 8000243c <_ZN3Sem5closeEv>
}
    80002660:	00813083          	ld	ra,8(sp)
    80002664:	00013403          	ld	s0,0(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret

0000000080002670 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00813423          	sd	s0,8(sp)
    80002678:	01010413          	addi	s0,sp,16
    8000267c:	00100793          	li	a5,1
    80002680:	00f50863          	beq	a0,a5,80002690 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret
    80002690:	000107b7          	lui	a5,0x10
    80002694:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002698:	fef596e3          	bne	a1,a5,80002684 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    8000269c:	00009797          	auipc	a5,0x9
    800026a0:	67c78793          	addi	a5,a5,1660 # 8000bd18 <_ZN9Scheduler19readyCoroutineQueueE>
    800026a4:	0007b023          	sd	zero,0(a5)
    800026a8:	0007b423          	sd	zero,8(a5)
    800026ac:	fd9ff06f          	j	80002684 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800026b0 <_ZN9Scheduler3getEv>:
{
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800026c4:	00009517          	auipc	a0,0x9
    800026c8:	65453503          	ld	a0,1620(a0) # 8000bd18 <_ZN9Scheduler19readyCoroutineQueueE>
    800026cc:	04050263          	beqz	a0,80002710 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800026d0:	00853783          	ld	a5,8(a0)
    800026d4:	00009717          	auipc	a4,0x9
    800026d8:	64f73223          	sd	a5,1604(a4) # 8000bd18 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800026dc:	02078463          	beqz	a5,80002704 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800026e0:	00053483          	ld	s1,0(a0)
        delete elem;
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	4a8080e7          	jalr	1192(ra) # 80001b8c <_ZdlPv>
}
    800026ec:	00048513          	mv	a0,s1
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret
        if (!head) { tail = 0; }
    80002704:	00009797          	auipc	a5,0x9
    80002708:	6007be23          	sd	zero,1564(a5) # 8000bd20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000270c:	fd5ff06f          	j	800026e0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002710:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002714:	fd9ff06f          	j	800026ec <_ZN9Scheduler3getEv+0x3c>

0000000080002718 <_ZN9Scheduler3putEP3TCB>:
{
    80002718:	fe010113          	addi	sp,sp,-32
    8000271c:	00113c23          	sd	ra,24(sp)
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	02010413          	addi	s0,sp,32
    8000272c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002730:	01000513          	li	a0,16
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	408080e7          	jalr	1032(ra) # 80001b3c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000273c:	00953023          	sd	s1,0(a0)
    80002740:	00053423          	sd	zero,8(a0)
        if (tail)
    80002744:	00009797          	auipc	a5,0x9
    80002748:	5dc7b783          	ld	a5,1500(a5) # 8000bd20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000274c:	02078263          	beqz	a5,80002770 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002750:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002754:	00009797          	auipc	a5,0x9
    80002758:	5ca7b623          	sd	a0,1484(a5) # 8000bd20 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret
            head = tail = elem;
    80002770:	00009797          	auipc	a5,0x9
    80002774:	5a878793          	addi	a5,a5,1448 # 8000bd18 <_ZN9Scheduler19readyCoroutineQueueE>
    80002778:	00a7b423          	sd	a0,8(a5)
    8000277c:	00a7b023          	sd	a0,0(a5)
    80002780:	fddff06f          	j	8000275c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002784 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	000105b7          	lui	a1,0x10
    80002798:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000279c:	00100513          	li	a0,1
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	ed0080e7          	jalr	-304(ra) # 80002670 <_Z41__static_initialization_and_destruction_0ii>
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZN15MemoryAllocator8memallocEm>:
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

bool MemoryAllocator::firstTime = true;
MemBlock* MemoryAllocator::freeMemHead = nullptr;

void* MemoryAllocator::memalloc(size_t size) {
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00813423          	sd	s0,8(sp)
    800027c0:	01010413          	addi	s0,sp,16
    if(firstTime) {
    800027c4:	00009797          	auipc	a5,0x9
    800027c8:	21c7c783          	lbu	a5,540(a5) # 8000b9e0 <_ZN15MemoryAllocator9firstTimeE>
    800027cc:	04078263          	beqz	a5,80002810 <_ZN15MemoryAllocator8memallocEm+0x58>
        freeMemHead = (MemBlock* ) HEAP_START_ADDR;
    800027d0:	00009797          	auipc	a5,0x9
    800027d4:	4707b783          	ld	a5,1136(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027d8:	0007b703          	ld	a4,0(a5)
    800027dc:	00009697          	auipc	a3,0x9
    800027e0:	54c68693          	addi	a3,a3,1356 # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>
    800027e4:	00e6b023          	sd	a4,0(a3)
        freeMemHead->size = (size_t ) ((char* ) HEAP_END_ADDR - (char* ) HEAP_START_ADDR - sizeof(MemBlock));
    800027e8:	00009797          	auipc	a5,0x9
    800027ec:	4987b783          	ld	a5,1176(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x50>
    800027f0:	0007b783          	ld	a5,0(a5)
    800027f4:	40e787b3          	sub	a5,a5,a4
    800027f8:	ff078793          	addi	a5,a5,-16
    800027fc:	00f73023          	sd	a5,0(a4)
        freeMemHead->next = nullptr;
    80002800:	0006b783          	ld	a5,0(a3)
    80002804:	0007b423          	sd	zero,8(a5)
        firstTime = false;
    80002808:	00009797          	auipc	a5,0x9
    8000280c:	1c078c23          	sb	zero,472(a5) # 8000b9e0 <_ZN15MemoryAllocator9firstTimeE>
    }

    size_t blkNum = (size + sizeof(MemBlock) -1) / MEM_BLOCK_SIZE;
    80002810:	00f50513          	addi	a0,a0,15
    80002814:	00655693          	srli	a3,a0,0x6
    if((size + sizeof(MemBlock) - 1) % MEM_BLOCK_SIZE != 0) blkNum +=1;
    80002818:	03f57513          	andi	a0,a0,63
    8000281c:	00050463          	beqz	a0,80002824 <_ZN15MemoryAllocator8memallocEm+0x6c>
    80002820:	00168693          	addi	a3,a3,1

    MemBlock *cur, *prev;

    for(cur = freeMemHead, prev = nullptr; cur != nullptr && cur->size < blkNum * MEM_BLOCK_SIZE; cur = cur->next) {
    80002824:	00009517          	auipc	a0,0x9
    80002828:	50453503          	ld	a0,1284(a0) # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>
    8000282c:	00000613          	li	a2,0
    80002830:	00050e63          	beqz	a0,8000284c <_ZN15MemoryAllocator8memallocEm+0x94>
    80002834:	00053703          	ld	a4,0(a0)
    80002838:	00669793          	slli	a5,a3,0x6
    8000283c:	00f77863          	bgeu	a4,a5,8000284c <_ZN15MemoryAllocator8memallocEm+0x94>
        prev = cur;
    80002840:	00050613          	mv	a2,a0
    for(cur = freeMemHead, prev = nullptr; cur != nullptr && cur->size < blkNum * MEM_BLOCK_SIZE; cur = cur->next) {
    80002844:	00853503          	ld	a0,8(a0)
    80002848:	fe9ff06f          	j	80002830 <_ZN15MemoryAllocator8memallocEm+0x78>
    }

    if(!cur) return nullptr;
    8000284c:	06050c63          	beqz	a0,800028c4 <_ZN15MemoryAllocator8memallocEm+0x10c>

    if(cur->size > (blkNum*MEM_BLOCK_SIZE + sizeof(MemBlock))) {
    80002850:	00053703          	ld	a4,0(a0)
    80002854:	00669693          	slli	a3,a3,0x6
    80002858:	01068793          	addi	a5,a3,16
    8000285c:	04e7fa63          	bgeu	a5,a4,800028b0 <_ZN15MemoryAllocator8memallocEm+0xf8>
        if(prev == nullptr) {
    80002860:	02060463          	beqz	a2,80002888 <_ZN15MemoryAllocator8memallocEm+0xd0>
            freeMemHead->next = cur->next;
            freeMemHead->size = cur->size - blkNum * MEM_BLOCK_SIZE;
            cur->size = blkNum * MEM_BLOCK_SIZE;

        } else {
            MemBlock* newBlk = (MemBlock* ) ((char* ) cur + blkNum * MEM_BLOCK_SIZE);
    80002864:	00d507b3          	add	a5,a0,a3
            prev->next = newBlk;
    80002868:	00f63423          	sd	a5,8(a2)
            newBlk->next = cur->next;
    8000286c:	00853703          	ld	a4,8(a0)
    80002870:	00e7b423          	sd	a4,8(a5)
            newBlk->size = cur->size - blkNum * MEM_BLOCK_SIZE;
    80002874:	00053703          	ld	a4,0(a0)
    80002878:	40d70733          	sub	a4,a4,a3
    8000287c:	00e7b023          	sd	a4,0(a5)
            cur->size = blkNum * MEM_BLOCK_SIZE;
    80002880:	00d53023          	sd	a3,0(a0)
    80002884:	03c0006f          	j	800028c0 <_ZN15MemoryAllocator8memallocEm+0x108>
            freeMemHead = (MemBlock* ) ((char* ) cur + blkNum * MEM_BLOCK_SIZE);
    80002888:	00d507b3          	add	a5,a0,a3
    8000288c:	00009717          	auipc	a4,0x9
    80002890:	48f73e23          	sd	a5,1180(a4) # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>
            freeMemHead->next = cur->next;
    80002894:	00853703          	ld	a4,8(a0)
    80002898:	00e7b423          	sd	a4,8(a5)
            freeMemHead->size = cur->size - blkNum * MEM_BLOCK_SIZE;
    8000289c:	00053703          	ld	a4,0(a0)
    800028a0:	40d70733          	sub	a4,a4,a3
    800028a4:	00e7b023          	sd	a4,0(a5)
            cur->size = blkNum * MEM_BLOCK_SIZE;
    800028a8:	00d53023          	sd	a3,0(a0)
    800028ac:	0140006f          	j	800028c0 <_ZN15MemoryAllocator8memallocEm+0x108>
        }
    } else {
        if(prev == nullptr ) freeMemHead = cur->next;
    800028b0:	02060063          	beqz	a2,800028d0 <_ZN15MemoryAllocator8memallocEm+0x118>
        else {
            prev->next = cur->next;
    800028b4:	00853783          	ld	a5,8(a0)
    800028b8:	00f63423          	sd	a5,8(a2)
        }
        cur->size = blkNum * MEM_BLOCK_SIZE;
    800028bc:	00d53023          	sd	a3,0(a0)
    }

    return (void* ) ((char*) cur + sizeof(MemBlock) );
    800028c0:	01050513          	addi	a0,a0,16
}
    800028c4:	00813403          	ld	s0,8(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret
        if(prev == nullptr ) freeMemHead = cur->next;
    800028d0:	00853783          	ld	a5,8(a0)
    800028d4:	00009717          	auipc	a4,0x9
    800028d8:	44f73a23          	sd	a5,1108(a4) # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>
    800028dc:	fe1ff06f          	j	800028bc <_ZN15MemoryAllocator8memallocEm+0x104>

00000000800028e0 <_Z9tryToJoinP8MemBlock>:

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------

void tryToJoin(MemBlock* cur){
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00813423          	sd	s0,8(sp)
    800028e8:	01010413          	addi	s0,sp,16
    if (cur->next) {
    800028ec:	00853783          	ld	a5,8(a0)
    800028f0:	00078863          	beqz	a5,80002900 <_Z9tryToJoinP8MemBlock+0x20>
        if (cur->size+(char*)cur==(char*)(cur->next)) {
    800028f4:	00053703          	ld	a4,0(a0)
    800028f8:	00e506b3          	add	a3,a0,a4
    800028fc:	00d78863          	beq	a5,a3,8000290c <_Z9tryToJoinP8MemBlock+0x2c>
            cur->size+=cur->next->size;
            cur->next=cur->next->next;
        }
    }
}
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret
            cur->size+=cur->next->size;
    8000290c:	0007b683          	ld	a3,0(a5)
    80002910:	00d70733          	add	a4,a4,a3
    80002914:	00e53023          	sd	a4,0(a0)
            cur->next=cur->next->next;
    80002918:	0087b783          	ld	a5,8(a5)
    8000291c:	00f53423          	sd	a5,8(a0)
}
    80002920:	fe1ff06f          	j	80002900 <_Z9tryToJoinP8MemBlock+0x20>

0000000080002924 <_ZN15MemoryAllocator7memfreeEPv>:

int MemoryAllocator::memfree(void *addr) {
    if(addr == nullptr) return -1;
    80002924:	06050663          	beqz	a0,80002990 <_ZN15MemoryAllocator7memfreeEPv+0x6c>
    80002928:	00050713          	mv	a4,a0
    if(addr > (void*) HEAP_END_ADDR || addr < (void*) HEAP_START_ADDR ) return -2;
    8000292c:	00009797          	auipc	a5,0x9
    80002930:	3547b783          	ld	a5,852(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002934:	0007b783          	ld	a5,0(a5)
    80002938:	06a7e063          	bltu	a5,a0,80002998 <_ZN15MemoryAllocator7memfreeEPv+0x74>
    8000293c:	00009797          	auipc	a5,0x9
    80002940:	3047b783          	ld	a5,772(a5) # 8000bc40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002944:	0007b783          	ld	a5,0(a5)
    80002948:	04f56c63          	bltu	a0,a5,800029a0 <_ZN15MemoryAllocator7memfreeEPv+0x7c>

    MemBlock* newBlk = (MemBlock* ) ((char* )addr - sizeof(MemBlock));
    8000294c:	ff050513          	addi	a0,a0,-16
    if(freeMemHead ) {
    80002950:	00009797          	auipc	a5,0x9
    80002954:	3d87b783          	ld	a5,984(a5) # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>
    80002958:	02078263          	beqz	a5,8000297c <_ZN15MemoryAllocator7memfreeEPv+0x58>
        if( addr < (void*)freeMemHead) {
    8000295c:	04f77663          	bgeu	a4,a5,800029a8 <_ZN15MemoryAllocator7memfreeEPv+0x84>
            //dodajemo prvi u listu
            newBlk->next = freeMemHead;
    80002960:	fef73c23          	sd	a5,-8(a4)
            freeMemHead = newBlk;
    80002964:	00009797          	auipc	a5,0x9
    80002968:	3ca7b223          	sd	a0,964(a5) # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>

            return 0;
    8000296c:	00000513          	li	a0,0
    80002970:	00008067          	ret
            for (temp = freeMemHead; temp->next; temp = temp->next) {
                if (addr < (void *) (temp->next)) break;
            }

            if(temp->next) newBlk->next = temp->next;
            else newBlk->next = nullptr;
    80002974:	fe073c23          	sd	zero,-8(a4)
    80002978:	05c0006f          	j	800029d4 <_ZN15MemoryAllocator7memfreeEPv+0xb0>

            return 0;
        }
    } else {
        //postavljamo newBlk da bude prvi
        freeMemHead = newBlk;
    8000297c:	00009797          	auipc	a5,0x9
    80002980:	3aa7b623          	sd	a0,940(a5) # 8000bd28 <_ZN15MemoryAllocator11freeMemHeadE>
        freeMemHead->next = nullptr;
    80002984:	00053423          	sd	zero,8(a0)

        return 0;
    80002988:	00000513          	li	a0,0
    8000298c:	00008067          	ret
    if(addr == nullptr) return -1;
    80002990:	fff00513          	li	a0,-1
    80002994:	00008067          	ret
    if(addr > (void*) HEAP_END_ADDR || addr < (void*) HEAP_START_ADDR ) return -2;
    80002998:	ffe00513          	li	a0,-2
    8000299c:	00008067          	ret
    800029a0:	ffe00513          	li	a0,-2
    }
}
    800029a4:	00008067          	ret
int MemoryAllocator::memfree(void *addr) {
    800029a8:	fe010113          	addi	sp,sp,-32
    800029ac:	00113c23          	sd	ra,24(sp)
    800029b0:	00813823          	sd	s0,16(sp)
    800029b4:	00913423          	sd	s1,8(sp)
    800029b8:	02010413          	addi	s0,sp,32
            for (temp = freeMemHead; temp->next; temp = temp->next) {
    800029bc:	00078493          	mv	s1,a5
    800029c0:	0087b783          	ld	a5,8(a5)
    800029c4:	00078463          	beqz	a5,800029cc <_ZN15MemoryAllocator7memfreeEPv+0xa8>
                if (addr < (void *) (temp->next)) break;
    800029c8:	fef77ae3          	bgeu	a4,a5,800029bc <_ZN15MemoryAllocator7memfreeEPv+0x98>
            if(temp->next) newBlk->next = temp->next;
    800029cc:	fa0784e3          	beqz	a5,80002974 <_ZN15MemoryAllocator7memfreeEPv+0x50>
    800029d0:	fef73c23          	sd	a5,-8(a4)
            temp->next = newBlk;
    800029d4:	00a4b423          	sd	a0,8(s1)
            tryToJoin(newBlk);
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	f08080e7          	jalr	-248(ra) # 800028e0 <_Z9tryToJoinP8MemBlock>
            tryToJoin(temp);
    800029e0:	00048513          	mv	a0,s1
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	efc080e7          	jalr	-260(ra) # 800028e0 <_Z9tryToJoinP8MemBlock>
            return 0;
    800029ec:	00000513          	li	a0,0
}
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret

0000000080002a04 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	01213023          	sd	s2,0(sp)
    80002a18:	02010413          	addi	s0,sp,32
    80002a1c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002a20:	00000913          	li	s2,0
    80002a24:	00c0006f          	j	80002a30 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	87c080e7          	jalr	-1924(ra) # 800012a4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	ab4080e7          	jalr	-1356(ra) # 800014e4 <_Z4getcv>
    80002a38:	0005059b          	sext.w	a1,a0
    80002a3c:	01b00793          	li	a5,27
    80002a40:	02f58a63          	beq	a1,a5,80002a74 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002a44:	0084b503          	ld	a0,8(s1)
    80002a48:	00004097          	auipc	ra,0x4
    80002a4c:	968080e7          	jalr	-1688(ra) # 800063b0 <_ZN6Buffer3putEi>
        i++;
    80002a50:	0019071b          	addiw	a4,s2,1
    80002a54:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a58:	0004a683          	lw	a3,0(s1)
    80002a5c:	0026979b          	slliw	a5,a3,0x2
    80002a60:	00d787bb          	addw	a5,a5,a3
    80002a64:	0017979b          	slliw	a5,a5,0x1
    80002a68:	02f767bb          	remw	a5,a4,a5
    80002a6c:	fc0792e3          	bnez	a5,80002a30 <_ZL16producerKeyboardPv+0x2c>
    80002a70:	fb9ff06f          	j	80002a28 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002a74:	00100793          	li	a5,1
    80002a78:	00009717          	auipc	a4,0x9
    80002a7c:	2af72c23          	sw	a5,696(a4) # 8000bd30 <_ZL9threadEnd>
    data->buffer->put('!');
    80002a80:	02100593          	li	a1,33
    80002a84:	0084b503          	ld	a0,8(s1)
    80002a88:	00004097          	auipc	ra,0x4
    80002a8c:	928080e7          	jalr	-1752(ra) # 800063b0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002a90:	0104b503          	ld	a0,16(s1)
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	9a0080e7          	jalr	-1632(ra) # 80001434 <_Z10sem_signalP3Sem>
}
    80002a9c:	01813083          	ld	ra,24(sp)
    80002aa0:	01013403          	ld	s0,16(sp)
    80002aa4:	00813483          	ld	s1,8(sp)
    80002aa8:	00013903          	ld	s2,0(sp)
    80002aac:	02010113          	addi	sp,sp,32
    80002ab0:	00008067          	ret

0000000080002ab4 <_ZL8producerPv>:

static void producer(void *arg) {
    80002ab4:	fe010113          	addi	sp,sp,-32
    80002ab8:	00113c23          	sd	ra,24(sp)
    80002abc:	00813823          	sd	s0,16(sp)
    80002ac0:	00913423          	sd	s1,8(sp)
    80002ac4:	01213023          	sd	s2,0(sp)
    80002ac8:	02010413          	addi	s0,sp,32
    80002acc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ad0:	00000913          	li	s2,0
    80002ad4:	00c0006f          	j	80002ae0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ad8:	ffffe097          	auipc	ra,0xffffe
    80002adc:	7cc080e7          	jalr	1996(ra) # 800012a4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002ae0:	00009797          	auipc	a5,0x9
    80002ae4:	2507a783          	lw	a5,592(a5) # 8000bd30 <_ZL9threadEnd>
    80002ae8:	02079e63          	bnez	a5,80002b24 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002aec:	0004a583          	lw	a1,0(s1)
    80002af0:	0305859b          	addiw	a1,a1,48
    80002af4:	0084b503          	ld	a0,8(s1)
    80002af8:	00004097          	auipc	ra,0x4
    80002afc:	8b8080e7          	jalr	-1864(ra) # 800063b0 <_ZN6Buffer3putEi>
        i++;
    80002b00:	0019071b          	addiw	a4,s2,1
    80002b04:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002b08:	0004a683          	lw	a3,0(s1)
    80002b0c:	0026979b          	slliw	a5,a3,0x2
    80002b10:	00d787bb          	addw	a5,a5,a3
    80002b14:	0017979b          	slliw	a5,a5,0x1
    80002b18:	02f767bb          	remw	a5,a4,a5
    80002b1c:	fc0792e3          	bnez	a5,80002ae0 <_ZL8producerPv+0x2c>
    80002b20:	fb9ff06f          	j	80002ad8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002b24:	0104b503          	ld	a0,16(s1)
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	90c080e7          	jalr	-1780(ra) # 80001434 <_Z10sem_signalP3Sem>
}
    80002b30:	01813083          	ld	ra,24(sp)
    80002b34:	01013403          	ld	s0,16(sp)
    80002b38:	00813483          	ld	s1,8(sp)
    80002b3c:	00013903          	ld	s2,0(sp)
    80002b40:	02010113          	addi	sp,sp,32
    80002b44:	00008067          	ret

0000000080002b48 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002b48:	fd010113          	addi	sp,sp,-48
    80002b4c:	02113423          	sd	ra,40(sp)
    80002b50:	02813023          	sd	s0,32(sp)
    80002b54:	00913c23          	sd	s1,24(sp)
    80002b58:	01213823          	sd	s2,16(sp)
    80002b5c:	01313423          	sd	s3,8(sp)
    80002b60:	03010413          	addi	s0,sp,48
    80002b64:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002b68:	00000993          	li	s3,0
    80002b6c:	01c0006f          	j	80002b88 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002b70:	ffffe097          	auipc	ra,0xffffe
    80002b74:	734080e7          	jalr	1844(ra) # 800012a4 <_Z15thread_dispatchv>
    80002b78:	0500006f          	j	80002bc8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002b7c:	00a00513          	li	a0,10
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	99c080e7          	jalr	-1636(ra) # 8000151c <_Z4putcc>
    while (!threadEnd) {
    80002b88:	00009797          	auipc	a5,0x9
    80002b8c:	1a87a783          	lw	a5,424(a5) # 8000bd30 <_ZL9threadEnd>
    80002b90:	06079063          	bnez	a5,80002bf0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002b94:	00893503          	ld	a0,8(s2)
    80002b98:	00004097          	auipc	ra,0x4
    80002b9c:	8a8080e7          	jalr	-1880(ra) # 80006440 <_ZN6Buffer3getEv>
        i++;
    80002ba0:	0019849b          	addiw	s1,s3,1
    80002ba4:	0004899b          	sext.w	s3,s1
        putc(key);
    80002ba8:	0ff57513          	andi	a0,a0,255
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	970080e7          	jalr	-1680(ra) # 8000151c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002bb4:	00092703          	lw	a4,0(s2)
    80002bb8:	0027179b          	slliw	a5,a4,0x2
    80002bbc:	00e787bb          	addw	a5,a5,a4
    80002bc0:	02f4e7bb          	remw	a5,s1,a5
    80002bc4:	fa0786e3          	beqz	a5,80002b70 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002bc8:	05000793          	li	a5,80
    80002bcc:	02f4e4bb          	remw	s1,s1,a5
    80002bd0:	fa049ce3          	bnez	s1,80002b88 <_ZL8consumerPv+0x40>
    80002bd4:	fa9ff06f          	j	80002b7c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002bd8:	00893503          	ld	a0,8(s2)
    80002bdc:	00004097          	auipc	ra,0x4
    80002be0:	864080e7          	jalr	-1948(ra) # 80006440 <_ZN6Buffer3getEv>
        putc(key);
    80002be4:	0ff57513          	andi	a0,a0,255
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	934080e7          	jalr	-1740(ra) # 8000151c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002bf0:	00893503          	ld	a0,8(s2)
    80002bf4:	00004097          	auipc	ra,0x4
    80002bf8:	8d8080e7          	jalr	-1832(ra) # 800064cc <_ZN6Buffer6getCntEv>
    80002bfc:	fca04ee3          	bgtz	a0,80002bd8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002c00:	01093503          	ld	a0,16(s2)
    80002c04:	fffff097          	auipc	ra,0xfffff
    80002c08:	830080e7          	jalr	-2000(ra) # 80001434 <_Z10sem_signalP3Sem>
}
    80002c0c:	02813083          	ld	ra,40(sp)
    80002c10:	02013403          	ld	s0,32(sp)
    80002c14:	01813483          	ld	s1,24(sp)
    80002c18:	01013903          	ld	s2,16(sp)
    80002c1c:	00813983          	ld	s3,8(sp)
    80002c20:	03010113          	addi	sp,sp,48
    80002c24:	00008067          	ret

0000000080002c28 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002c28:	f9010113          	addi	sp,sp,-112
    80002c2c:	06113423          	sd	ra,104(sp)
    80002c30:	06813023          	sd	s0,96(sp)
    80002c34:	04913c23          	sd	s1,88(sp)
    80002c38:	05213823          	sd	s2,80(sp)
    80002c3c:	05313423          	sd	s3,72(sp)
    80002c40:	05413023          	sd	s4,64(sp)
    80002c44:	03513c23          	sd	s5,56(sp)
    80002c48:	03613823          	sd	s6,48(sp)
    80002c4c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002c50:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002c54:	00006517          	auipc	a0,0x6
    80002c58:	55c50513          	addi	a0,a0,1372 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002c5c:	00002097          	auipc	ra,0x2
    80002c60:	220080e7          	jalr	544(ra) # 80004e7c <_Z11printStringPKc>
    getString(input, 30);
    80002c64:	01e00593          	li	a1,30
    80002c68:	fa040493          	addi	s1,s0,-96
    80002c6c:	00048513          	mv	a0,s1
    80002c70:	00002097          	auipc	ra,0x2
    80002c74:	294080e7          	jalr	660(ra) # 80004f04 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002c78:	00048513          	mv	a0,s1
    80002c7c:	00002097          	auipc	ra,0x2
    80002c80:	360080e7          	jalr	864(ra) # 80004fdc <_Z11stringToIntPKc>
    80002c84:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002c88:	00006517          	auipc	a0,0x6
    80002c8c:	54850513          	addi	a0,a0,1352 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80002c90:	00002097          	auipc	ra,0x2
    80002c94:	1ec080e7          	jalr	492(ra) # 80004e7c <_Z11printStringPKc>
    getString(input, 30);
    80002c98:	01e00593          	li	a1,30
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	00002097          	auipc	ra,0x2
    80002ca4:	264080e7          	jalr	612(ra) # 80004f04 <_Z9getStringPci>
    n = stringToInt(input);
    80002ca8:	00048513          	mv	a0,s1
    80002cac:	00002097          	auipc	ra,0x2
    80002cb0:	330080e7          	jalr	816(ra) # 80004fdc <_Z11stringToIntPKc>
    80002cb4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002cb8:	00006517          	auipc	a0,0x6
    80002cbc:	53850513          	addi	a0,a0,1336 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80002cc0:	00002097          	auipc	ra,0x2
    80002cc4:	1bc080e7          	jalr	444(ra) # 80004e7c <_Z11printStringPKc>
    80002cc8:	00000613          	li	a2,0
    80002ccc:	00a00593          	li	a1,10
    80002cd0:	00090513          	mv	a0,s2
    80002cd4:	00002097          	auipc	ra,0x2
    80002cd8:	358080e7          	jalr	856(ra) # 8000502c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002cdc:	00006517          	auipc	a0,0x6
    80002ce0:	52c50513          	addi	a0,a0,1324 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002ce4:	00002097          	auipc	ra,0x2
    80002ce8:	198080e7          	jalr	408(ra) # 80004e7c <_Z11printStringPKc>
    80002cec:	00000613          	li	a2,0
    80002cf0:	00a00593          	li	a1,10
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00002097          	auipc	ra,0x2
    80002cfc:	334080e7          	jalr	820(ra) # 8000502c <_Z8printIntiii>
    printString(".\n");
    80002d00:	00006517          	auipc	a0,0x6
    80002d04:	52050513          	addi	a0,a0,1312 # 80009220 <CONSOLE_STATUS+0x210>
    80002d08:	00002097          	auipc	ra,0x2
    80002d0c:	174080e7          	jalr	372(ra) # 80004e7c <_Z11printStringPKc>
    if(threadNum > n) {
    80002d10:	0324c463          	blt	s1,s2,80002d38 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002d14:	03205c63          	blez	s2,80002d4c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002d18:	03800513          	li	a0,56
    80002d1c:	fffff097          	auipc	ra,0xfffff
    80002d20:	e20080e7          	jalr	-480(ra) # 80001b3c <_Znwm>
    80002d24:	00050a13          	mv	s4,a0
    80002d28:	00048593          	mv	a1,s1
    80002d2c:	00003097          	auipc	ra,0x3
    80002d30:	5e8080e7          	jalr	1512(ra) # 80006314 <_ZN6BufferC1Ei>
    80002d34:	0300006f          	j	80002d64 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002d38:	00006517          	auipc	a0,0x6
    80002d3c:	4f050513          	addi	a0,a0,1264 # 80009228 <CONSOLE_STATUS+0x218>
    80002d40:	00002097          	auipc	ra,0x2
    80002d44:	13c080e7          	jalr	316(ra) # 80004e7c <_Z11printStringPKc>
        return;
    80002d48:	0140006f          	j	80002d5c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002d4c:	00006517          	auipc	a0,0x6
    80002d50:	51c50513          	addi	a0,a0,1308 # 80009268 <CONSOLE_STATUS+0x258>
    80002d54:	00002097          	auipc	ra,0x2
    80002d58:	128080e7          	jalr	296(ra) # 80004e7c <_Z11printStringPKc>
        return;
    80002d5c:	000b0113          	mv	sp,s6
    80002d60:	1500006f          	j	80002eb0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002d64:	00000593          	li	a1,0
    80002d68:	00009517          	auipc	a0,0x9
    80002d6c:	fd050513          	addi	a0,a0,-48 # 8000bd38 <_ZL10waitForAll>
    80002d70:	ffffe097          	auipc	ra,0xffffe
    80002d74:	60c080e7          	jalr	1548(ra) # 8000137c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002d78:	00391793          	slli	a5,s2,0x3
    80002d7c:	00f78793          	addi	a5,a5,15
    80002d80:	ff07f793          	andi	a5,a5,-16
    80002d84:	40f10133          	sub	sp,sp,a5
    80002d88:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002d8c:	0019071b          	addiw	a4,s2,1
    80002d90:	00171793          	slli	a5,a4,0x1
    80002d94:	00e787b3          	add	a5,a5,a4
    80002d98:	00379793          	slli	a5,a5,0x3
    80002d9c:	00f78793          	addi	a5,a5,15
    80002da0:	ff07f793          	andi	a5,a5,-16
    80002da4:	40f10133          	sub	sp,sp,a5
    80002da8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002dac:	00191613          	slli	a2,s2,0x1
    80002db0:	012607b3          	add	a5,a2,s2
    80002db4:	00379793          	slli	a5,a5,0x3
    80002db8:	00f987b3          	add	a5,s3,a5
    80002dbc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002dc0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002dc4:	00009717          	auipc	a4,0x9
    80002dc8:	f7473703          	ld	a4,-140(a4) # 8000bd38 <_ZL10waitForAll>
    80002dcc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002dd0:	00078613          	mv	a2,a5
    80002dd4:	00000597          	auipc	a1,0x0
    80002dd8:	d7458593          	addi	a1,a1,-652 # 80002b48 <_ZL8consumerPv>
    80002ddc:	f9840513          	addi	a0,s0,-104
    80002de0:	ffffe097          	auipc	ra,0xffffe
    80002de4:	448080e7          	jalr	1096(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002de8:	00000493          	li	s1,0
    80002dec:	0280006f          	j	80002e14 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002df0:	00000597          	auipc	a1,0x0
    80002df4:	c1458593          	addi	a1,a1,-1004 # 80002a04 <_ZL16producerKeyboardPv>
                      data + i);
    80002df8:	00179613          	slli	a2,a5,0x1
    80002dfc:	00f60633          	add	a2,a2,a5
    80002e00:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002e04:	00c98633          	add	a2,s3,a2
    80002e08:	ffffe097          	auipc	ra,0xffffe
    80002e0c:	420080e7          	jalr	1056(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002e10:	0014849b          	addiw	s1,s1,1
    80002e14:	0524d263          	bge	s1,s2,80002e58 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002e18:	00149793          	slli	a5,s1,0x1
    80002e1c:	009787b3          	add	a5,a5,s1
    80002e20:	00379793          	slli	a5,a5,0x3
    80002e24:	00f987b3          	add	a5,s3,a5
    80002e28:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002e2c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002e30:	00009717          	auipc	a4,0x9
    80002e34:	f0873703          	ld	a4,-248(a4) # 8000bd38 <_ZL10waitForAll>
    80002e38:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002e3c:	00048793          	mv	a5,s1
    80002e40:	00349513          	slli	a0,s1,0x3
    80002e44:	00aa8533          	add	a0,s5,a0
    80002e48:	fa9054e3          	blez	s1,80002df0 <_Z22producerConsumer_C_APIv+0x1c8>
    80002e4c:	00000597          	auipc	a1,0x0
    80002e50:	c6858593          	addi	a1,a1,-920 # 80002ab4 <_ZL8producerPv>
    80002e54:	fa5ff06f          	j	80002df8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	44c080e7          	jalr	1100(ra) # 800012a4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002e60:	00000493          	li	s1,0
    80002e64:	00994e63          	blt	s2,s1,80002e80 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002e68:	00009517          	auipc	a0,0x9
    80002e6c:	ed053503          	ld	a0,-304(a0) # 8000bd38 <_ZL10waitForAll>
    80002e70:	ffffe097          	auipc	ra,0xffffe
    80002e74:	588080e7          	jalr	1416(ra) # 800013f8 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80002e78:	0014849b          	addiw	s1,s1,1
    80002e7c:	fe9ff06f          	j	80002e64 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002e80:	00009517          	auipc	a0,0x9
    80002e84:	eb853503          	ld	a0,-328(a0) # 8000bd38 <_ZL10waitForAll>
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	534080e7          	jalr	1332(ra) # 800013bc <_Z9sem_closeP3Sem>
    delete buffer;
    80002e90:	000a0e63          	beqz	s4,80002eac <_Z22producerConsumer_C_APIv+0x284>
    80002e94:	000a0513          	mv	a0,s4
    80002e98:	00003097          	auipc	ra,0x3
    80002e9c:	6bc080e7          	jalr	1724(ra) # 80006554 <_ZN6BufferD1Ev>
    80002ea0:	000a0513          	mv	a0,s4
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	ce8080e7          	jalr	-792(ra) # 80001b8c <_ZdlPv>
    80002eac:	000b0113          	mv	sp,s6

}
    80002eb0:	f9040113          	addi	sp,s0,-112
    80002eb4:	06813083          	ld	ra,104(sp)
    80002eb8:	06013403          	ld	s0,96(sp)
    80002ebc:	05813483          	ld	s1,88(sp)
    80002ec0:	05013903          	ld	s2,80(sp)
    80002ec4:	04813983          	ld	s3,72(sp)
    80002ec8:	04013a03          	ld	s4,64(sp)
    80002ecc:	03813a83          	ld	s5,56(sp)
    80002ed0:	03013b03          	ld	s6,48(sp)
    80002ed4:	07010113          	addi	sp,sp,112
    80002ed8:	00008067          	ret
    80002edc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002ee0:	000a0513          	mv	a0,s4
    80002ee4:	fffff097          	auipc	ra,0xfffff
    80002ee8:	ca8080e7          	jalr	-856(ra) # 80001b8c <_ZdlPv>
    80002eec:	00048513          	mv	a0,s1
    80002ef0:	0000a097          	auipc	ra,0xa
    80002ef4:	f68080e7          	jalr	-152(ra) # 8000ce58 <_Unwind_Resume>

0000000080002ef8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	01213023          	sd	s2,0(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    80002f10:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002f14:	00100793          	li	a5,1
    80002f18:	02a7f863          	bgeu	a5,a0,80002f48 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002f1c:	00a00793          	li	a5,10
    80002f20:	02f577b3          	remu	a5,a0,a5
    80002f24:	02078e63          	beqz	a5,80002f60 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002f28:	fff48513          	addi	a0,s1,-1
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	fcc080e7          	jalr	-52(ra) # 80002ef8 <_ZL9fibonaccim>
    80002f34:	00050913          	mv	s2,a0
    80002f38:	ffe48513          	addi	a0,s1,-2
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	fbc080e7          	jalr	-68(ra) # 80002ef8 <_ZL9fibonaccim>
    80002f44:	00a90533          	add	a0,s2,a0
}
    80002f48:	01813083          	ld	ra,24(sp)
    80002f4c:	01013403          	ld	s0,16(sp)
    80002f50:	00813483          	ld	s1,8(sp)
    80002f54:	00013903          	ld	s2,0(sp)
    80002f58:	02010113          	addi	sp,sp,32
    80002f5c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002f60:	ffffe097          	auipc	ra,0xffffe
    80002f64:	344080e7          	jalr	836(ra) # 800012a4 <_Z15thread_dispatchv>
    80002f68:	fc1ff06f          	j	80002f28 <_ZL9fibonaccim+0x30>

0000000080002f6c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00113c23          	sd	ra,24(sp)
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	01213023          	sd	s2,0(sp)
    80002f80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002f84:	00000913          	li	s2,0
    80002f88:	0380006f          	j	80002fc0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f8c:	ffffe097          	auipc	ra,0xffffe
    80002f90:	318080e7          	jalr	792(ra) # 800012a4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f94:	00148493          	addi	s1,s1,1
    80002f98:	000027b7          	lui	a5,0x2
    80002f9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002fa0:	0097ee63          	bltu	a5,s1,80002fbc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002fa4:	00000713          	li	a4,0
    80002fa8:	000077b7          	lui	a5,0x7
    80002fac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002fb0:	fce7eee3          	bltu	a5,a4,80002f8c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002fb4:	00170713          	addi	a4,a4,1
    80002fb8:	ff1ff06f          	j	80002fa8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002fbc:	00190913          	addi	s2,s2,1
    80002fc0:	00900793          	li	a5,9
    80002fc4:	0527e063          	bltu	a5,s2,80003004 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002fc8:	00006517          	auipc	a0,0x6
    80002fcc:	2d050513          	addi	a0,a0,720 # 80009298 <CONSOLE_STATUS+0x288>
    80002fd0:	00002097          	auipc	ra,0x2
    80002fd4:	eac080e7          	jalr	-340(ra) # 80004e7c <_Z11printStringPKc>
    80002fd8:	00000613          	li	a2,0
    80002fdc:	00a00593          	li	a1,10
    80002fe0:	0009051b          	sext.w	a0,s2
    80002fe4:	00002097          	auipc	ra,0x2
    80002fe8:	048080e7          	jalr	72(ra) # 8000502c <_Z8printIntiii>
    80002fec:	00006517          	auipc	a0,0x6
    80002ff0:	7ac50513          	addi	a0,a0,1964 # 80009798 <CONSOLE_STATUS+0x788>
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	e88080e7          	jalr	-376(ra) # 80004e7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ffc:	00000493          	li	s1,0
    80003000:	f99ff06f          	j	80002f98 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003004:	00006517          	auipc	a0,0x6
    80003008:	29c50513          	addi	a0,a0,668 # 800092a0 <CONSOLE_STATUS+0x290>
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	e70080e7          	jalr	-400(ra) # 80004e7c <_Z11printStringPKc>
    finishedA = true;
    80003014:	00100793          	li	a5,1
    80003018:	00009717          	auipc	a4,0x9
    8000301c:	d2f70423          	sb	a5,-728(a4) # 8000bd40 <_ZL9finishedA>
}
    80003020:	01813083          	ld	ra,24(sp)
    80003024:	01013403          	ld	s0,16(sp)
    80003028:	00813483          	ld	s1,8(sp)
    8000302c:	00013903          	ld	s2,0(sp)
    80003030:	02010113          	addi	sp,sp,32
    80003034:	00008067          	ret

0000000080003038 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003038:	fe010113          	addi	sp,sp,-32
    8000303c:	00113c23          	sd	ra,24(sp)
    80003040:	00813823          	sd	s0,16(sp)
    80003044:	00913423          	sd	s1,8(sp)
    80003048:	01213023          	sd	s2,0(sp)
    8000304c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003050:	00000913          	li	s2,0
    80003054:	0380006f          	j	8000308c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003058:	ffffe097          	auipc	ra,0xffffe
    8000305c:	24c080e7          	jalr	588(ra) # 800012a4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003060:	00148493          	addi	s1,s1,1
    80003064:	000027b7          	lui	a5,0x2
    80003068:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000306c:	0097ee63          	bltu	a5,s1,80003088 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003070:	00000713          	li	a4,0
    80003074:	000077b7          	lui	a5,0x7
    80003078:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000307c:	fce7eee3          	bltu	a5,a4,80003058 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003080:	00170713          	addi	a4,a4,1
    80003084:	ff1ff06f          	j	80003074 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003088:	00190913          	addi	s2,s2,1
    8000308c:	00f00793          	li	a5,15
    80003090:	0527e063          	bltu	a5,s2,800030d0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003094:	00006517          	auipc	a0,0x6
    80003098:	21c50513          	addi	a0,a0,540 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000309c:	00002097          	auipc	ra,0x2
    800030a0:	de0080e7          	jalr	-544(ra) # 80004e7c <_Z11printStringPKc>
    800030a4:	00000613          	li	a2,0
    800030a8:	00a00593          	li	a1,10
    800030ac:	0009051b          	sext.w	a0,s2
    800030b0:	00002097          	auipc	ra,0x2
    800030b4:	f7c080e7          	jalr	-132(ra) # 8000502c <_Z8printIntiii>
    800030b8:	00006517          	auipc	a0,0x6
    800030bc:	6e050513          	addi	a0,a0,1760 # 80009798 <CONSOLE_STATUS+0x788>
    800030c0:	00002097          	auipc	ra,0x2
    800030c4:	dbc080e7          	jalr	-580(ra) # 80004e7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800030c8:	00000493          	li	s1,0
    800030cc:	f99ff06f          	j	80003064 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800030d0:	00006517          	auipc	a0,0x6
    800030d4:	1e850513          	addi	a0,a0,488 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800030d8:	00002097          	auipc	ra,0x2
    800030dc:	da4080e7          	jalr	-604(ra) # 80004e7c <_Z11printStringPKc>
    finishedB = true;
    800030e0:	00100793          	li	a5,1
    800030e4:	00009717          	auipc	a4,0x9
    800030e8:	c4f70ea3          	sb	a5,-931(a4) # 8000bd41 <_ZL9finishedB>
    thread_dispatch();
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	1b8080e7          	jalr	440(ra) # 800012a4 <_Z15thread_dispatchv>
}
    800030f4:	01813083          	ld	ra,24(sp)
    800030f8:	01013403          	ld	s0,16(sp)
    800030fc:	00813483          	ld	s1,8(sp)
    80003100:	00013903          	ld	s2,0(sp)
    80003104:	02010113          	addi	sp,sp,32
    80003108:	00008067          	ret

000000008000310c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000310c:	fe010113          	addi	sp,sp,-32
    80003110:	00113c23          	sd	ra,24(sp)
    80003114:	00813823          	sd	s0,16(sp)
    80003118:	00913423          	sd	s1,8(sp)
    8000311c:	01213023          	sd	s2,0(sp)
    80003120:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003124:	00000493          	li	s1,0
    80003128:	0400006f          	j	80003168 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	19c50513          	addi	a0,a0,412 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003134:	00002097          	auipc	ra,0x2
    80003138:	d48080e7          	jalr	-696(ra) # 80004e7c <_Z11printStringPKc>
    8000313c:	00000613          	li	a2,0
    80003140:	00a00593          	li	a1,10
    80003144:	00048513          	mv	a0,s1
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	ee4080e7          	jalr	-284(ra) # 8000502c <_Z8printIntiii>
    80003150:	00006517          	auipc	a0,0x6
    80003154:	64850513          	addi	a0,a0,1608 # 80009798 <CONSOLE_STATUS+0x788>
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	d24080e7          	jalr	-732(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003160:	0014849b          	addiw	s1,s1,1
    80003164:	0ff4f493          	andi	s1,s1,255
    80003168:	00200793          	li	a5,2
    8000316c:	fc97f0e3          	bgeu	a5,s1,8000312c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	16050513          	addi	a0,a0,352 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	d04080e7          	jalr	-764(ra) # 80004e7c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003180:	00700313          	li	t1,7
    thread_dispatch();
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	120080e7          	jalr	288(ra) # 800012a4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000318c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003190:	00006517          	auipc	a0,0x6
    80003194:	15050513          	addi	a0,a0,336 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003198:	00002097          	auipc	ra,0x2
    8000319c:	ce4080e7          	jalr	-796(ra) # 80004e7c <_Z11printStringPKc>
    800031a0:	00000613          	li	a2,0
    800031a4:	00a00593          	li	a1,10
    800031a8:	0009051b          	sext.w	a0,s2
    800031ac:	00002097          	auipc	ra,0x2
    800031b0:	e80080e7          	jalr	-384(ra) # 8000502c <_Z8printIntiii>
    800031b4:	00006517          	auipc	a0,0x6
    800031b8:	5e450513          	addi	a0,a0,1508 # 80009798 <CONSOLE_STATUS+0x788>
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	cc0080e7          	jalr	-832(ra) # 80004e7c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800031c4:	00c00513          	li	a0,12
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	d30080e7          	jalr	-720(ra) # 80002ef8 <_ZL9fibonaccim>
    800031d0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800031d4:	00006517          	auipc	a0,0x6
    800031d8:	11450513          	addi	a0,a0,276 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800031dc:	00002097          	auipc	ra,0x2
    800031e0:	ca0080e7          	jalr	-864(ra) # 80004e7c <_Z11printStringPKc>
    800031e4:	00000613          	li	a2,0
    800031e8:	00a00593          	li	a1,10
    800031ec:	0009051b          	sext.w	a0,s2
    800031f0:	00002097          	auipc	ra,0x2
    800031f4:	e3c080e7          	jalr	-452(ra) # 8000502c <_Z8printIntiii>
    800031f8:	00006517          	auipc	a0,0x6
    800031fc:	5a050513          	addi	a0,a0,1440 # 80009798 <CONSOLE_STATUS+0x788>
    80003200:	00002097          	auipc	ra,0x2
    80003204:	c7c080e7          	jalr	-900(ra) # 80004e7c <_Z11printStringPKc>
    80003208:	0400006f          	j	80003248 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000320c:	00006517          	auipc	a0,0x6
    80003210:	0bc50513          	addi	a0,a0,188 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003214:	00002097          	auipc	ra,0x2
    80003218:	c68080e7          	jalr	-920(ra) # 80004e7c <_Z11printStringPKc>
    8000321c:	00000613          	li	a2,0
    80003220:	00a00593          	li	a1,10
    80003224:	00048513          	mv	a0,s1
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	e04080e7          	jalr	-508(ra) # 8000502c <_Z8printIntiii>
    80003230:	00006517          	auipc	a0,0x6
    80003234:	56850513          	addi	a0,a0,1384 # 80009798 <CONSOLE_STATUS+0x788>
    80003238:	00002097          	auipc	ra,0x2
    8000323c:	c44080e7          	jalr	-956(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003240:	0014849b          	addiw	s1,s1,1
    80003244:	0ff4f493          	andi	s1,s1,255
    80003248:	00500793          	li	a5,5
    8000324c:	fc97f0e3          	bgeu	a5,s1,8000320c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003250:	00006517          	auipc	a0,0x6
    80003254:	05050513          	addi	a0,a0,80 # 800092a0 <CONSOLE_STATUS+0x290>
    80003258:	00002097          	auipc	ra,0x2
    8000325c:	c24080e7          	jalr	-988(ra) # 80004e7c <_Z11printStringPKc>
    finishedC = true;
    80003260:	00100793          	li	a5,1
    80003264:	00009717          	auipc	a4,0x9
    80003268:	acf70f23          	sb	a5,-1314(a4) # 8000bd42 <_ZL9finishedC>
    thread_dispatch();
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	038080e7          	jalr	56(ra) # 800012a4 <_Z15thread_dispatchv>
}
    80003274:	01813083          	ld	ra,24(sp)
    80003278:	01013403          	ld	s0,16(sp)
    8000327c:	00813483          	ld	s1,8(sp)
    80003280:	00013903          	ld	s2,0(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000328c:	fe010113          	addi	sp,sp,-32
    80003290:	00113c23          	sd	ra,24(sp)
    80003294:	00813823          	sd	s0,16(sp)
    80003298:	00913423          	sd	s1,8(sp)
    8000329c:	01213023          	sd	s2,0(sp)
    800032a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032a4:	00a00493          	li	s1,10
    800032a8:	0400006f          	j	800032e8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032ac:	00006517          	auipc	a0,0x6
    800032b0:	04c50513          	addi	a0,a0,76 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	bc8080e7          	jalr	-1080(ra) # 80004e7c <_Z11printStringPKc>
    800032bc:	00000613          	li	a2,0
    800032c0:	00a00593          	li	a1,10
    800032c4:	00048513          	mv	a0,s1
    800032c8:	00002097          	auipc	ra,0x2
    800032cc:	d64080e7          	jalr	-668(ra) # 8000502c <_Z8printIntiii>
    800032d0:	00006517          	auipc	a0,0x6
    800032d4:	4c850513          	addi	a0,a0,1224 # 80009798 <CONSOLE_STATUS+0x788>
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	ba4080e7          	jalr	-1116(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800032e0:	0014849b          	addiw	s1,s1,1
    800032e4:	0ff4f493          	andi	s1,s1,255
    800032e8:	00c00793          	li	a5,12
    800032ec:	fc97f0e3          	bgeu	a5,s1,800032ac <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800032f0:	00006517          	auipc	a0,0x6
    800032f4:	01050513          	addi	a0,a0,16 # 80009300 <CONSOLE_STATUS+0x2f0>
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	b84080e7          	jalr	-1148(ra) # 80004e7c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003300:	00500313          	li	t1,5
    thread_dispatch();
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	fa0080e7          	jalr	-96(ra) # 800012a4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000330c:	01000513          	li	a0,16
    80003310:	00000097          	auipc	ra,0x0
    80003314:	be8080e7          	jalr	-1048(ra) # 80002ef8 <_ZL9fibonaccim>
    80003318:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000331c:	00006517          	auipc	a0,0x6
    80003320:	ff450513          	addi	a0,a0,-12 # 80009310 <CONSOLE_STATUS+0x300>
    80003324:	00002097          	auipc	ra,0x2
    80003328:	b58080e7          	jalr	-1192(ra) # 80004e7c <_Z11printStringPKc>
    8000332c:	00000613          	li	a2,0
    80003330:	00a00593          	li	a1,10
    80003334:	0009051b          	sext.w	a0,s2
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	cf4080e7          	jalr	-780(ra) # 8000502c <_Z8printIntiii>
    80003340:	00006517          	auipc	a0,0x6
    80003344:	45850513          	addi	a0,a0,1112 # 80009798 <CONSOLE_STATUS+0x788>
    80003348:	00002097          	auipc	ra,0x2
    8000334c:	b34080e7          	jalr	-1228(ra) # 80004e7c <_Z11printStringPKc>
    80003350:	0400006f          	j	80003390 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003354:	00006517          	auipc	a0,0x6
    80003358:	fa450513          	addi	a0,a0,-92 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	b20080e7          	jalr	-1248(ra) # 80004e7c <_Z11printStringPKc>
    80003364:	00000613          	li	a2,0
    80003368:	00a00593          	li	a1,10
    8000336c:	00048513          	mv	a0,s1
    80003370:	00002097          	auipc	ra,0x2
    80003374:	cbc080e7          	jalr	-836(ra) # 8000502c <_Z8printIntiii>
    80003378:	00006517          	auipc	a0,0x6
    8000337c:	42050513          	addi	a0,a0,1056 # 80009798 <CONSOLE_STATUS+0x788>
    80003380:	00002097          	auipc	ra,0x2
    80003384:	afc080e7          	jalr	-1284(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003388:	0014849b          	addiw	s1,s1,1
    8000338c:	0ff4f493          	andi	s1,s1,255
    80003390:	00f00793          	li	a5,15
    80003394:	fc97f0e3          	bgeu	a5,s1,80003354 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003398:	00006517          	auipc	a0,0x6
    8000339c:	f8850513          	addi	a0,a0,-120 # 80009320 <CONSOLE_STATUS+0x310>
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	adc080e7          	jalr	-1316(ra) # 80004e7c <_Z11printStringPKc>
    finishedD = true;
    800033a8:	00100793          	li	a5,1
    800033ac:	00009717          	auipc	a4,0x9
    800033b0:	98f70ba3          	sb	a5,-1641(a4) # 8000bd43 <_ZL9finishedD>
    thread_dispatch();
    800033b4:	ffffe097          	auipc	ra,0xffffe
    800033b8:	ef0080e7          	jalr	-272(ra) # 800012a4 <_Z15thread_dispatchv>
}
    800033bc:	01813083          	ld	ra,24(sp)
    800033c0:	01013403          	ld	s0,16(sp)
    800033c4:	00813483          	ld	s1,8(sp)
    800033c8:	00013903          	ld	s2,0(sp)
    800033cc:	02010113          	addi	sp,sp,32
    800033d0:	00008067          	ret

00000000800033d4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800033d4:	fc010113          	addi	sp,sp,-64
    800033d8:	02113c23          	sd	ra,56(sp)
    800033dc:	02813823          	sd	s0,48(sp)
    800033e0:	02913423          	sd	s1,40(sp)
    800033e4:	03213023          	sd	s2,32(sp)
    800033e8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800033ec:	02000513          	li	a0,32
    800033f0:	ffffe097          	auipc	ra,0xffffe
    800033f4:	74c080e7          	jalr	1868(ra) # 80001b3c <_Znwm>
    800033f8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	990080e7          	jalr	-1648(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80003404:	00008797          	auipc	a5,0x8
    80003408:	5f478793          	addi	a5,a5,1524 # 8000b9f8 <_ZTV7WorkerA+0x10>
    8000340c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003410:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003414:	00006517          	auipc	a0,0x6
    80003418:	f1c50513          	addi	a0,a0,-228 # 80009330 <CONSOLE_STATUS+0x320>
    8000341c:	00002097          	auipc	ra,0x2
    80003420:	a60080e7          	jalr	-1440(ra) # 80004e7c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003424:	02000513          	li	a0,32
    80003428:	ffffe097          	auipc	ra,0xffffe
    8000342c:	714080e7          	jalr	1812(ra) # 80001b3c <_Znwm>
    80003430:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	958080e7          	jalr	-1704(ra) # 80001d8c <_ZN6ThreadC1Ev>
    8000343c:	00008797          	auipc	a5,0x8
    80003440:	5e478793          	addi	a5,a5,1508 # 8000ba20 <_ZTV7WorkerB+0x10>
    80003444:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003448:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000344c:	00006517          	auipc	a0,0x6
    80003450:	efc50513          	addi	a0,a0,-260 # 80009348 <CONSOLE_STATUS+0x338>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	a28080e7          	jalr	-1496(ra) # 80004e7c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000345c:	02000513          	li	a0,32
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	6dc080e7          	jalr	1756(ra) # 80001b3c <_Znwm>
    80003468:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	920080e7          	jalr	-1760(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80003474:	00008797          	auipc	a5,0x8
    80003478:	5d478793          	addi	a5,a5,1492 # 8000ba48 <_ZTV7WorkerC+0x10>
    8000347c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003480:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003484:	00006517          	auipc	a0,0x6
    80003488:	edc50513          	addi	a0,a0,-292 # 80009360 <CONSOLE_STATUS+0x350>
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	9f0080e7          	jalr	-1552(ra) # 80004e7c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003494:	02000513          	li	a0,32
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	6a4080e7          	jalr	1700(ra) # 80001b3c <_Znwm>
    800034a0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	8e8080e7          	jalr	-1816(ra) # 80001d8c <_ZN6ThreadC1Ev>
    800034ac:	00008797          	auipc	a5,0x8
    800034b0:	5c478793          	addi	a5,a5,1476 # 8000ba70 <_ZTV7WorkerD+0x10>
    800034b4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800034b8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800034bc:	00006517          	auipc	a0,0x6
    800034c0:	ebc50513          	addi	a0,a0,-324 # 80009378 <CONSOLE_STATUS+0x368>
    800034c4:	00002097          	auipc	ra,0x2
    800034c8:	9b8080e7          	jalr	-1608(ra) # 80004e7c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800034cc:	00000493          	li	s1,0
    800034d0:	00300793          	li	a5,3
    800034d4:	0297c663          	blt	a5,s1,80003500 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800034d8:	00349793          	slli	a5,s1,0x3
    800034dc:	fe040713          	addi	a4,s0,-32
    800034e0:	00f707b3          	add	a5,a4,a5
    800034e4:	fe07b503          	ld	a0,-32(a5)
    800034e8:	fffff097          	auipc	ra,0xfffff
    800034ec:	8f8080e7          	jalr	-1800(ra) # 80001de0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800034f0:	0014849b          	addiw	s1,s1,1
    800034f4:	fddff06f          	j	800034d0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	918080e7          	jalr	-1768(ra) # 80001e10 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003500:	00009797          	auipc	a5,0x9
    80003504:	8407c783          	lbu	a5,-1984(a5) # 8000bd40 <_ZL9finishedA>
    80003508:	fe0788e3          	beqz	a5,800034f8 <_Z20Threads_CPP_API_testv+0x124>
    8000350c:	00009797          	auipc	a5,0x9
    80003510:	8357c783          	lbu	a5,-1995(a5) # 8000bd41 <_ZL9finishedB>
    80003514:	fe0782e3          	beqz	a5,800034f8 <_Z20Threads_CPP_API_testv+0x124>
    80003518:	00009797          	auipc	a5,0x9
    8000351c:	82a7c783          	lbu	a5,-2006(a5) # 8000bd42 <_ZL9finishedC>
    80003520:	fc078ce3          	beqz	a5,800034f8 <_Z20Threads_CPP_API_testv+0x124>
    80003524:	00009797          	auipc	a5,0x9
    80003528:	81f7c783          	lbu	a5,-2017(a5) # 8000bd43 <_ZL9finishedD>
    8000352c:	fc0786e3          	beqz	a5,800034f8 <_Z20Threads_CPP_API_testv+0x124>
    80003530:	fc040493          	addi	s1,s0,-64
    80003534:	0080006f          	j	8000353c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003538:	00848493          	addi	s1,s1,8
    8000353c:	fe040793          	addi	a5,s0,-32
    80003540:	08f48663          	beq	s1,a5,800035cc <_Z20Threads_CPP_API_testv+0x1f8>
    80003544:	0004b503          	ld	a0,0(s1)
    80003548:	fe0508e3          	beqz	a0,80003538 <_Z20Threads_CPP_API_testv+0x164>
    8000354c:	00053783          	ld	a5,0(a0)
    80003550:	0087b783          	ld	a5,8(a5)
    80003554:	000780e7          	jalr	a5
    80003558:	fe1ff06f          	j	80003538 <_Z20Threads_CPP_API_testv+0x164>
    8000355c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003560:	00048513          	mv	a0,s1
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	628080e7          	jalr	1576(ra) # 80001b8c <_ZdlPv>
    8000356c:	00090513          	mv	a0,s2
    80003570:	0000a097          	auipc	ra,0xa
    80003574:	8e8080e7          	jalr	-1816(ra) # 8000ce58 <_Unwind_Resume>
    80003578:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000357c:	00048513          	mv	a0,s1
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	60c080e7          	jalr	1548(ra) # 80001b8c <_ZdlPv>
    80003588:	00090513          	mv	a0,s2
    8000358c:	0000a097          	auipc	ra,0xa
    80003590:	8cc080e7          	jalr	-1844(ra) # 8000ce58 <_Unwind_Resume>
    80003594:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003598:	00048513          	mv	a0,s1
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	5f0080e7          	jalr	1520(ra) # 80001b8c <_ZdlPv>
    800035a4:	00090513          	mv	a0,s2
    800035a8:	0000a097          	auipc	ra,0xa
    800035ac:	8b0080e7          	jalr	-1872(ra) # 8000ce58 <_Unwind_Resume>
    800035b0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800035b4:	00048513          	mv	a0,s1
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	5d4080e7          	jalr	1492(ra) # 80001b8c <_ZdlPv>
    800035c0:	00090513          	mv	a0,s2
    800035c4:	0000a097          	auipc	ra,0xa
    800035c8:	894080e7          	jalr	-1900(ra) # 8000ce58 <_Unwind_Resume>
}
    800035cc:	03813083          	ld	ra,56(sp)
    800035d0:	03013403          	ld	s0,48(sp)
    800035d4:	02813483          	ld	s1,40(sp)
    800035d8:	02013903          	ld	s2,32(sp)
    800035dc:	04010113          	addi	sp,sp,64
    800035e0:	00008067          	ret

00000000800035e4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800035e4:	ff010113          	addi	sp,sp,-16
    800035e8:	00113423          	sd	ra,8(sp)
    800035ec:	00813023          	sd	s0,0(sp)
    800035f0:	01010413          	addi	s0,sp,16
    800035f4:	00008797          	auipc	a5,0x8
    800035f8:	40478793          	addi	a5,a5,1028 # 8000b9f8 <_ZTV7WorkerA+0x10>
    800035fc:	00f53023          	sd	a5,0(a0)
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	5dc080e7          	jalr	1500(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003608:	00813083          	ld	ra,8(sp)
    8000360c:	00013403          	ld	s0,0(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret

0000000080003618 <_ZN7WorkerAD0Ev>:
    80003618:	fe010113          	addi	sp,sp,-32
    8000361c:	00113c23          	sd	ra,24(sp)
    80003620:	00813823          	sd	s0,16(sp)
    80003624:	00913423          	sd	s1,8(sp)
    80003628:	02010413          	addi	s0,sp,32
    8000362c:	00050493          	mv	s1,a0
    80003630:	00008797          	auipc	a5,0x8
    80003634:	3c878793          	addi	a5,a5,968 # 8000b9f8 <_ZTV7WorkerA+0x10>
    80003638:	00f53023          	sd	a5,0(a0)
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	5a0080e7          	jalr	1440(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003644:	00048513          	mv	a0,s1
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	544080e7          	jalr	1348(ra) # 80001b8c <_ZdlPv>
    80003650:	01813083          	ld	ra,24(sp)
    80003654:	01013403          	ld	s0,16(sp)
    80003658:	00813483          	ld	s1,8(sp)
    8000365c:	02010113          	addi	sp,sp,32
    80003660:	00008067          	ret

0000000080003664 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00113423          	sd	ra,8(sp)
    8000366c:	00813023          	sd	s0,0(sp)
    80003670:	01010413          	addi	s0,sp,16
    80003674:	00008797          	auipc	a5,0x8
    80003678:	3ac78793          	addi	a5,a5,940 # 8000ba20 <_ZTV7WorkerB+0x10>
    8000367c:	00f53023          	sd	a5,0(a0)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	55c080e7          	jalr	1372(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003688:	00813083          	ld	ra,8(sp)
    8000368c:	00013403          	ld	s0,0(sp)
    80003690:	01010113          	addi	sp,sp,16
    80003694:	00008067          	ret

0000000080003698 <_ZN7WorkerBD0Ev>:
    80003698:	fe010113          	addi	sp,sp,-32
    8000369c:	00113c23          	sd	ra,24(sp)
    800036a0:	00813823          	sd	s0,16(sp)
    800036a4:	00913423          	sd	s1,8(sp)
    800036a8:	02010413          	addi	s0,sp,32
    800036ac:	00050493          	mv	s1,a0
    800036b0:	00008797          	auipc	a5,0x8
    800036b4:	37078793          	addi	a5,a5,880 # 8000ba20 <_ZTV7WorkerB+0x10>
    800036b8:	00f53023          	sd	a5,0(a0)
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	520080e7          	jalr	1312(ra) # 80001bdc <_ZN6ThreadD1Ev>
    800036c4:	00048513          	mv	a0,s1
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	4c4080e7          	jalr	1220(ra) # 80001b8c <_ZdlPv>
    800036d0:	01813083          	ld	ra,24(sp)
    800036d4:	01013403          	ld	s0,16(sp)
    800036d8:	00813483          	ld	s1,8(sp)
    800036dc:	02010113          	addi	sp,sp,32
    800036e0:	00008067          	ret

00000000800036e4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00113423          	sd	ra,8(sp)
    800036ec:	00813023          	sd	s0,0(sp)
    800036f0:	01010413          	addi	s0,sp,16
    800036f4:	00008797          	auipc	a5,0x8
    800036f8:	35478793          	addi	a5,a5,852 # 8000ba48 <_ZTV7WorkerC+0x10>
    800036fc:	00f53023          	sd	a5,0(a0)
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	4dc080e7          	jalr	1244(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003708:	00813083          	ld	ra,8(sp)
    8000370c:	00013403          	ld	s0,0(sp)
    80003710:	01010113          	addi	sp,sp,16
    80003714:	00008067          	ret

0000000080003718 <_ZN7WorkerCD0Ev>:
    80003718:	fe010113          	addi	sp,sp,-32
    8000371c:	00113c23          	sd	ra,24(sp)
    80003720:	00813823          	sd	s0,16(sp)
    80003724:	00913423          	sd	s1,8(sp)
    80003728:	02010413          	addi	s0,sp,32
    8000372c:	00050493          	mv	s1,a0
    80003730:	00008797          	auipc	a5,0x8
    80003734:	31878793          	addi	a5,a5,792 # 8000ba48 <_ZTV7WorkerC+0x10>
    80003738:	00f53023          	sd	a5,0(a0)
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	4a0080e7          	jalr	1184(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003744:	00048513          	mv	a0,s1
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	444080e7          	jalr	1092(ra) # 80001b8c <_ZdlPv>
    80003750:	01813083          	ld	ra,24(sp)
    80003754:	01013403          	ld	s0,16(sp)
    80003758:	00813483          	ld	s1,8(sp)
    8000375c:	02010113          	addi	sp,sp,32
    80003760:	00008067          	ret

0000000080003764 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003764:	ff010113          	addi	sp,sp,-16
    80003768:	00113423          	sd	ra,8(sp)
    8000376c:	00813023          	sd	s0,0(sp)
    80003770:	01010413          	addi	s0,sp,16
    80003774:	00008797          	auipc	a5,0x8
    80003778:	2fc78793          	addi	a5,a5,764 # 8000ba70 <_ZTV7WorkerD+0x10>
    8000377c:	00f53023          	sd	a5,0(a0)
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	45c080e7          	jalr	1116(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003788:	00813083          	ld	ra,8(sp)
    8000378c:	00013403          	ld	s0,0(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <_ZN7WorkerDD0Ev>:
    80003798:	fe010113          	addi	sp,sp,-32
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	02010413          	addi	s0,sp,32
    800037ac:	00050493          	mv	s1,a0
    800037b0:	00008797          	auipc	a5,0x8
    800037b4:	2c078793          	addi	a5,a5,704 # 8000ba70 <_ZTV7WorkerD+0x10>
    800037b8:	00f53023          	sd	a5,0(a0)
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	420080e7          	jalr	1056(ra) # 80001bdc <_ZN6ThreadD1Ev>
    800037c4:	00048513          	mv	a0,s1
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	3c4080e7          	jalr	964(ra) # 80001b8c <_ZdlPv>
    800037d0:	01813083          	ld	ra,24(sp)
    800037d4:	01013403          	ld	s0,16(sp)
    800037d8:	00813483          	ld	s1,8(sp)
    800037dc:	02010113          	addi	sp,sp,32
    800037e0:	00008067          	ret

00000000800037e4 <_ZN7WorkerA3runEv>:
    void run() override {
    800037e4:	ff010113          	addi	sp,sp,-16
    800037e8:	00113423          	sd	ra,8(sp)
    800037ec:	00813023          	sd	s0,0(sp)
    800037f0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800037f4:	00000593          	li	a1,0
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	774080e7          	jalr	1908(ra) # 80002f6c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003800:	00813083          	ld	ra,8(sp)
    80003804:	00013403          	ld	s0,0(sp)
    80003808:	01010113          	addi	sp,sp,16
    8000380c:	00008067          	ret

0000000080003810 <_ZN7WorkerB3runEv>:
    void run() override {
    80003810:	ff010113          	addi	sp,sp,-16
    80003814:	00113423          	sd	ra,8(sp)
    80003818:	00813023          	sd	s0,0(sp)
    8000381c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003820:	00000593          	li	a1,0
    80003824:	00000097          	auipc	ra,0x0
    80003828:	814080e7          	jalr	-2028(ra) # 80003038 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000382c:	00813083          	ld	ra,8(sp)
    80003830:	00013403          	ld	s0,0(sp)
    80003834:	01010113          	addi	sp,sp,16
    80003838:	00008067          	ret

000000008000383c <_ZN7WorkerC3runEv>:
    void run() override {
    8000383c:	ff010113          	addi	sp,sp,-16
    80003840:	00113423          	sd	ra,8(sp)
    80003844:	00813023          	sd	s0,0(sp)
    80003848:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000384c:	00000593          	li	a1,0
    80003850:	00000097          	auipc	ra,0x0
    80003854:	8bc080e7          	jalr	-1860(ra) # 8000310c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003858:	00813083          	ld	ra,8(sp)
    8000385c:	00013403          	ld	s0,0(sp)
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret

0000000080003868 <_ZN7WorkerD3runEv>:
    void run() override {
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00113423          	sd	ra,8(sp)
    80003870:	00813023          	sd	s0,0(sp)
    80003874:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003878:	00000593          	li	a1,0
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	a10080e7          	jalr	-1520(ra) # 8000328c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003884:	00813083          	ld	ra,8(sp)
    80003888:	00013403          	ld	s0,0(sp)
    8000388c:	01010113          	addi	sp,sp,16
    80003890:	00008067          	ret

0000000080003894 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003894:	f8010113          	addi	sp,sp,-128
    80003898:	06113c23          	sd	ra,120(sp)
    8000389c:	06813823          	sd	s0,112(sp)
    800038a0:	06913423          	sd	s1,104(sp)
    800038a4:	07213023          	sd	s2,96(sp)
    800038a8:	05313c23          	sd	s3,88(sp)
    800038ac:	05413823          	sd	s4,80(sp)
    800038b0:	05513423          	sd	s5,72(sp)
    800038b4:	05613023          	sd	s6,64(sp)
    800038b8:	03713c23          	sd	s7,56(sp)
    800038bc:	03813823          	sd	s8,48(sp)
    800038c0:	03913423          	sd	s9,40(sp)
    800038c4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800038c8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800038cc:	00006517          	auipc	a0,0x6
    800038d0:	8e450513          	addi	a0,a0,-1820 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	5a8080e7          	jalr	1448(ra) # 80004e7c <_Z11printStringPKc>
    getString(input, 30);
    800038dc:	01e00593          	li	a1,30
    800038e0:	f8040493          	addi	s1,s0,-128
    800038e4:	00048513          	mv	a0,s1
    800038e8:	00001097          	auipc	ra,0x1
    800038ec:	61c080e7          	jalr	1564(ra) # 80004f04 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800038f0:	00048513          	mv	a0,s1
    800038f4:	00001097          	auipc	ra,0x1
    800038f8:	6e8080e7          	jalr	1768(ra) # 80004fdc <_Z11stringToIntPKc>
    800038fc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003900:	00006517          	auipc	a0,0x6
    80003904:	8d050513          	addi	a0,a0,-1840 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003908:	00001097          	auipc	ra,0x1
    8000390c:	574080e7          	jalr	1396(ra) # 80004e7c <_Z11printStringPKc>
    getString(input, 30);
    80003910:	01e00593          	li	a1,30
    80003914:	00048513          	mv	a0,s1
    80003918:	00001097          	auipc	ra,0x1
    8000391c:	5ec080e7          	jalr	1516(ra) # 80004f04 <_Z9getStringPci>
    n = stringToInt(input);
    80003920:	00048513          	mv	a0,s1
    80003924:	00001097          	auipc	ra,0x1
    80003928:	6b8080e7          	jalr	1720(ra) # 80004fdc <_Z11stringToIntPKc>
    8000392c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003930:	00006517          	auipc	a0,0x6
    80003934:	8c050513          	addi	a0,a0,-1856 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003938:	00001097          	auipc	ra,0x1
    8000393c:	544080e7          	jalr	1348(ra) # 80004e7c <_Z11printStringPKc>
    printInt(threadNum);
    80003940:	00000613          	li	a2,0
    80003944:	00a00593          	li	a1,10
    80003948:	00098513          	mv	a0,s3
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	6e0080e7          	jalr	1760(ra) # 8000502c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003954:	00006517          	auipc	a0,0x6
    80003958:	8b450513          	addi	a0,a0,-1868 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000395c:	00001097          	auipc	ra,0x1
    80003960:	520080e7          	jalr	1312(ra) # 80004e7c <_Z11printStringPKc>
    printInt(n);
    80003964:	00000613          	li	a2,0
    80003968:	00a00593          	li	a1,10
    8000396c:	00048513          	mv	a0,s1
    80003970:	00001097          	auipc	ra,0x1
    80003974:	6bc080e7          	jalr	1724(ra) # 8000502c <_Z8printIntiii>
    printString(".\n");
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	8a850513          	addi	a0,a0,-1880 # 80009220 <CONSOLE_STATUS+0x210>
    80003980:	00001097          	auipc	ra,0x1
    80003984:	4fc080e7          	jalr	1276(ra) # 80004e7c <_Z11printStringPKc>
    if (threadNum > n) {
    80003988:	0334c463          	blt	s1,s3,800039b0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000398c:	03305c63          	blez	s3,800039c4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003990:	03800513          	li	a0,56
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	1a8080e7          	jalr	424(ra) # 80001b3c <_Znwm>
    8000399c:	00050a93          	mv	s5,a0
    800039a0:	00048593          	mv	a1,s1
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	7a8080e7          	jalr	1960(ra) # 8000514c <_ZN9BufferCPPC1Ei>
    800039ac:	0300006f          	j	800039dc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800039b0:	00006517          	auipc	a0,0x6
    800039b4:	87850513          	addi	a0,a0,-1928 # 80009228 <CONSOLE_STATUS+0x218>
    800039b8:	00001097          	auipc	ra,0x1
    800039bc:	4c4080e7          	jalr	1220(ra) # 80004e7c <_Z11printStringPKc>
        return;
    800039c0:	0140006f          	j	800039d4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800039c4:	00006517          	auipc	a0,0x6
    800039c8:	8a450513          	addi	a0,a0,-1884 # 80009268 <CONSOLE_STATUS+0x258>
    800039cc:	00001097          	auipc	ra,0x1
    800039d0:	4b0080e7          	jalr	1200(ra) # 80004e7c <_Z11printStringPKc>
        return;
    800039d4:	000c0113          	mv	sp,s8
    800039d8:	2140006f          	j	80003bec <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800039dc:	01000513          	li	a0,16
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	15c080e7          	jalr	348(ra) # 80001b3c <_Znwm>
    800039e8:	00050913          	mv	s2,a0
    800039ec:	00000593          	li	a1,0
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	4c4080e7          	jalr	1220(ra) # 80001eb4 <_ZN9SemaphoreC1Ej>
    800039f8:	00008797          	auipc	a5,0x8
    800039fc:	3527bc23          	sd	s2,856(a5) # 8000bd50 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003a00:	00399793          	slli	a5,s3,0x3
    80003a04:	00f78793          	addi	a5,a5,15
    80003a08:	ff07f793          	andi	a5,a5,-16
    80003a0c:	40f10133          	sub	sp,sp,a5
    80003a10:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003a14:	0019871b          	addiw	a4,s3,1
    80003a18:	00171793          	slli	a5,a4,0x1
    80003a1c:	00e787b3          	add	a5,a5,a4
    80003a20:	00379793          	slli	a5,a5,0x3
    80003a24:	00f78793          	addi	a5,a5,15
    80003a28:	ff07f793          	andi	a5,a5,-16
    80003a2c:	40f10133          	sub	sp,sp,a5
    80003a30:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003a34:	00199493          	slli	s1,s3,0x1
    80003a38:	013484b3          	add	s1,s1,s3
    80003a3c:	00349493          	slli	s1,s1,0x3
    80003a40:	009b04b3          	add	s1,s6,s1
    80003a44:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003a48:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003a4c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003a50:	02800513          	li	a0,40
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	0e8080e7          	jalr	232(ra) # 80001b3c <_Znwm>
    80003a5c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	32c080e7          	jalr	812(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	08078793          	addi	a5,a5,128 # 8000bae8 <_ZTV8Consumer+0x10>
    80003a70:	00fbb023          	sd	a5,0(s7)
    80003a74:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003a78:	000b8513          	mv	a0,s7
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	364080e7          	jalr	868(ra) # 80001de0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003a84:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003a88:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003a8c:	00008797          	auipc	a5,0x8
    80003a90:	2c47b783          	ld	a5,708(a5) # 8000bd50 <_ZL10waitForAll>
    80003a94:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a98:	02800513          	li	a0,40
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	0a0080e7          	jalr	160(ra) # 80001b3c <_Znwm>
    80003aa4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	2e4080e7          	jalr	740(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80003ab0:	00008797          	auipc	a5,0x8
    80003ab4:	fe878793          	addi	a5,a5,-24 # 8000ba98 <_ZTV16ProducerKeyborad+0x10>
    80003ab8:	00f4b023          	sd	a5,0(s1)
    80003abc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003ac0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	318080e7          	jalr	792(ra) # 80001de0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ad0:	00100913          	li	s2,1
    80003ad4:	0300006f          	j	80003b04 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	fe878793          	addi	a5,a5,-24 # 8000bac0 <_ZTV8Producer+0x10>
    80003ae0:	00fcb023          	sd	a5,0(s9)
    80003ae4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003ae8:	00391793          	slli	a5,s2,0x3
    80003aec:	00fa07b3          	add	a5,s4,a5
    80003af0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003af4:	000c8513          	mv	a0,s9
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	2e8080e7          	jalr	744(ra) # 80001de0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003b00:	0019091b          	addiw	s2,s2,1
    80003b04:	05395263          	bge	s2,s3,80003b48 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003b08:	00191493          	slli	s1,s2,0x1
    80003b0c:	012484b3          	add	s1,s1,s2
    80003b10:	00349493          	slli	s1,s1,0x3
    80003b14:	009b04b3          	add	s1,s6,s1
    80003b18:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003b1c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003b20:	00008797          	auipc	a5,0x8
    80003b24:	2307b783          	ld	a5,560(a5) # 8000bd50 <_ZL10waitForAll>
    80003b28:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003b2c:	02800513          	li	a0,40
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	00c080e7          	jalr	12(ra) # 80001b3c <_Znwm>
    80003b38:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	250080e7          	jalr	592(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80003b44:	f95ff06f          	j	80003ad8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003b48:	ffffe097          	auipc	ra,0xffffe
    80003b4c:	2c8080e7          	jalr	712(ra) # 80001e10 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003b50:	00000493          	li	s1,0
    80003b54:	0099ce63          	blt	s3,s1,80003b70 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003b58:	00008517          	auipc	a0,0x8
    80003b5c:	1f853503          	ld	a0,504(a0) # 8000bd50 <_ZL10waitForAll>
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	38c080e7          	jalr	908(ra) # 80001eec <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003b68:	0014849b          	addiw	s1,s1,1
    80003b6c:	fe9ff06f          	j	80003b54 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003b70:	00008517          	auipc	a0,0x8
    80003b74:	1e053503          	ld	a0,480(a0) # 8000bd50 <_ZL10waitForAll>
    80003b78:	00050863          	beqz	a0,80003b88 <_Z20testConsumerProducerv+0x2f4>
    80003b7c:	00053783          	ld	a5,0(a0)
    80003b80:	0087b783          	ld	a5,8(a5)
    80003b84:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003b88:	00000493          	li	s1,0
    80003b8c:	0080006f          	j	80003b94 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003b90:	0014849b          	addiw	s1,s1,1
    80003b94:	0334d263          	bge	s1,s3,80003bb8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003b98:	00349793          	slli	a5,s1,0x3
    80003b9c:	00fa07b3          	add	a5,s4,a5
    80003ba0:	0007b503          	ld	a0,0(a5)
    80003ba4:	fe0506e3          	beqz	a0,80003b90 <_Z20testConsumerProducerv+0x2fc>
    80003ba8:	00053783          	ld	a5,0(a0)
    80003bac:	0087b783          	ld	a5,8(a5)
    80003bb0:	000780e7          	jalr	a5
    80003bb4:	fddff06f          	j	80003b90 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003bb8:	000b8a63          	beqz	s7,80003bcc <_Z20testConsumerProducerv+0x338>
    80003bbc:	000bb783          	ld	a5,0(s7)
    80003bc0:	0087b783          	ld	a5,8(a5)
    80003bc4:	000b8513          	mv	a0,s7
    80003bc8:	000780e7          	jalr	a5
    delete buffer;
    80003bcc:	000a8e63          	beqz	s5,80003be8 <_Z20testConsumerProducerv+0x354>
    80003bd0:	000a8513          	mv	a0,s5
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	870080e7          	jalr	-1936(ra) # 80005444 <_ZN9BufferCPPD1Ev>
    80003bdc:	000a8513          	mv	a0,s5
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	fac080e7          	jalr	-84(ra) # 80001b8c <_ZdlPv>
    80003be8:	000c0113          	mv	sp,s8
}
    80003bec:	f8040113          	addi	sp,s0,-128
    80003bf0:	07813083          	ld	ra,120(sp)
    80003bf4:	07013403          	ld	s0,112(sp)
    80003bf8:	06813483          	ld	s1,104(sp)
    80003bfc:	06013903          	ld	s2,96(sp)
    80003c00:	05813983          	ld	s3,88(sp)
    80003c04:	05013a03          	ld	s4,80(sp)
    80003c08:	04813a83          	ld	s5,72(sp)
    80003c0c:	04013b03          	ld	s6,64(sp)
    80003c10:	03813b83          	ld	s7,56(sp)
    80003c14:	03013c03          	ld	s8,48(sp)
    80003c18:	02813c83          	ld	s9,40(sp)
    80003c1c:	08010113          	addi	sp,sp,128
    80003c20:	00008067          	ret
    80003c24:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003c28:	000a8513          	mv	a0,s5
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	f60080e7          	jalr	-160(ra) # 80001b8c <_ZdlPv>
    80003c34:	00048513          	mv	a0,s1
    80003c38:	00009097          	auipc	ra,0x9
    80003c3c:	220080e7          	jalr	544(ra) # 8000ce58 <_Unwind_Resume>
    80003c40:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003c44:	00090513          	mv	a0,s2
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	f44080e7          	jalr	-188(ra) # 80001b8c <_ZdlPv>
    80003c50:	00048513          	mv	a0,s1
    80003c54:	00009097          	auipc	ra,0x9
    80003c58:	204080e7          	jalr	516(ra) # 8000ce58 <_Unwind_Resume>
    80003c5c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003c60:	000b8513          	mv	a0,s7
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	f28080e7          	jalr	-216(ra) # 80001b8c <_ZdlPv>
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	00009097          	auipc	ra,0x9
    80003c74:	1e8080e7          	jalr	488(ra) # 8000ce58 <_Unwind_Resume>
    80003c78:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c7c:	00048513          	mv	a0,s1
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	f0c080e7          	jalr	-244(ra) # 80001b8c <_ZdlPv>
    80003c88:	00090513          	mv	a0,s2
    80003c8c:	00009097          	auipc	ra,0x9
    80003c90:	1cc080e7          	jalr	460(ra) # 8000ce58 <_Unwind_Resume>
    80003c94:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003c98:	000c8513          	mv	a0,s9
    80003c9c:	ffffe097          	auipc	ra,0xffffe
    80003ca0:	ef0080e7          	jalr	-272(ra) # 80001b8c <_ZdlPv>
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00009097          	auipc	ra,0x9
    80003cac:	1b0080e7          	jalr	432(ra) # 8000ce58 <_Unwind_Resume>

0000000080003cb0 <_ZN8Consumer3runEv>:
    void run() override {
    80003cb0:	fd010113          	addi	sp,sp,-48
    80003cb4:	02113423          	sd	ra,40(sp)
    80003cb8:	02813023          	sd	s0,32(sp)
    80003cbc:	00913c23          	sd	s1,24(sp)
    80003cc0:	01213823          	sd	s2,16(sp)
    80003cc4:	01313423          	sd	s3,8(sp)
    80003cc8:	03010413          	addi	s0,sp,48
    80003ccc:	00050913          	mv	s2,a0
        int i = 0;
    80003cd0:	00000993          	li	s3,0
    80003cd4:	0100006f          	j	80003ce4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003cd8:	00a00513          	li	a0,10
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	2e8080e7          	jalr	744(ra) # 80001fc4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003ce4:	00008797          	auipc	a5,0x8
    80003ce8:	0647a783          	lw	a5,100(a5) # 8000bd48 <_ZL9threadEnd>
    80003cec:	04079a63          	bnez	a5,80003d40 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003cf0:	02093783          	ld	a5,32(s2)
    80003cf4:	0087b503          	ld	a0,8(a5)
    80003cf8:	00001097          	auipc	ra,0x1
    80003cfc:	638080e7          	jalr	1592(ra) # 80005330 <_ZN9BufferCPP3getEv>
            i++;
    80003d00:	0019849b          	addiw	s1,s3,1
    80003d04:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003d08:	0ff57513          	andi	a0,a0,255
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	2b8080e7          	jalr	696(ra) # 80001fc4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003d14:	05000793          	li	a5,80
    80003d18:	02f4e4bb          	remw	s1,s1,a5
    80003d1c:	fc0494e3          	bnez	s1,80003ce4 <_ZN8Consumer3runEv+0x34>
    80003d20:	fb9ff06f          	j	80003cd8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003d24:	02093783          	ld	a5,32(s2)
    80003d28:	0087b503          	ld	a0,8(a5)
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	604080e7          	jalr	1540(ra) # 80005330 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003d34:	0ff57513          	andi	a0,a0,255
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	28c080e7          	jalr	652(ra) # 80001fc4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003d40:	02093783          	ld	a5,32(s2)
    80003d44:	0087b503          	ld	a0,8(a5)
    80003d48:	00001097          	auipc	ra,0x1
    80003d4c:	674080e7          	jalr	1652(ra) # 800053bc <_ZN9BufferCPP6getCntEv>
    80003d50:	fca04ae3          	bgtz	a0,80003d24 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003d54:	02093783          	ld	a5,32(s2)
    80003d58:	0107b503          	ld	a0,16(a5)
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	1bc080e7          	jalr	444(ra) # 80001f18 <_ZN9Semaphore6signalEv>
    }
    80003d64:	02813083          	ld	ra,40(sp)
    80003d68:	02013403          	ld	s0,32(sp)
    80003d6c:	01813483          	ld	s1,24(sp)
    80003d70:	01013903          	ld	s2,16(sp)
    80003d74:	00813983          	ld	s3,8(sp)
    80003d78:	03010113          	addi	sp,sp,48
    80003d7c:	00008067          	ret

0000000080003d80 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003d80:	ff010113          	addi	sp,sp,-16
    80003d84:	00113423          	sd	ra,8(sp)
    80003d88:	00813023          	sd	s0,0(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	d5878793          	addi	a5,a5,-680 # 8000bae8 <_ZTV8Consumer+0x10>
    80003d98:	00f53023          	sd	a5,0(a0)
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	e40080e7          	jalr	-448(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003da4:	00813083          	ld	ra,8(sp)
    80003da8:	00013403          	ld	s0,0(sp)
    80003dac:	01010113          	addi	sp,sp,16
    80003db0:	00008067          	ret

0000000080003db4 <_ZN8ConsumerD0Ev>:
    80003db4:	fe010113          	addi	sp,sp,-32
    80003db8:	00113c23          	sd	ra,24(sp)
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00913423          	sd	s1,8(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    80003dc8:	00050493          	mv	s1,a0
    80003dcc:	00008797          	auipc	a5,0x8
    80003dd0:	d1c78793          	addi	a5,a5,-740 # 8000bae8 <_ZTV8Consumer+0x10>
    80003dd4:	00f53023          	sd	a5,0(a0)
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	e04080e7          	jalr	-508(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003de0:	00048513          	mv	a0,s1
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	da8080e7          	jalr	-600(ra) # 80001b8c <_ZdlPv>
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret

0000000080003e00 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003e00:	ff010113          	addi	sp,sp,-16
    80003e04:	00113423          	sd	ra,8(sp)
    80003e08:	00813023          	sd	s0,0(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    80003e10:	00008797          	auipc	a5,0x8
    80003e14:	c8878793          	addi	a5,a5,-888 # 8000ba98 <_ZTV16ProducerKeyborad+0x10>
    80003e18:	00f53023          	sd	a5,0(a0)
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	dc0080e7          	jalr	-576(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003e24:	00813083          	ld	ra,8(sp)
    80003e28:	00013403          	ld	s0,0(sp)
    80003e2c:	01010113          	addi	sp,sp,16
    80003e30:	00008067          	ret

0000000080003e34 <_ZN16ProducerKeyboradD0Ev>:
    80003e34:	fe010113          	addi	sp,sp,-32
    80003e38:	00113c23          	sd	ra,24(sp)
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00913423          	sd	s1,8(sp)
    80003e44:	02010413          	addi	s0,sp,32
    80003e48:	00050493          	mv	s1,a0
    80003e4c:	00008797          	auipc	a5,0x8
    80003e50:	c4c78793          	addi	a5,a5,-948 # 8000ba98 <_ZTV16ProducerKeyborad+0x10>
    80003e54:	00f53023          	sd	a5,0(a0)
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	d84080e7          	jalr	-636(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003e60:	00048513          	mv	a0,s1
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	d28080e7          	jalr	-728(ra) # 80001b8c <_ZdlPv>
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	02010113          	addi	sp,sp,32
    80003e7c:	00008067          	ret

0000000080003e80 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003e80:	ff010113          	addi	sp,sp,-16
    80003e84:	00113423          	sd	ra,8(sp)
    80003e88:	00813023          	sd	s0,0(sp)
    80003e8c:	01010413          	addi	s0,sp,16
    80003e90:	00008797          	auipc	a5,0x8
    80003e94:	c3078793          	addi	a5,a5,-976 # 8000bac0 <_ZTV8Producer+0x10>
    80003e98:	00f53023          	sd	a5,0(a0)
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	d40080e7          	jalr	-704(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003ea4:	00813083          	ld	ra,8(sp)
    80003ea8:	00013403          	ld	s0,0(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN8ProducerD0Ev>:
    80003eb4:	fe010113          	addi	sp,sp,-32
    80003eb8:	00113c23          	sd	ra,24(sp)
    80003ebc:	00813823          	sd	s0,16(sp)
    80003ec0:	00913423          	sd	s1,8(sp)
    80003ec4:	02010413          	addi	s0,sp,32
    80003ec8:	00050493          	mv	s1,a0
    80003ecc:	00008797          	auipc	a5,0x8
    80003ed0:	bf478793          	addi	a5,a5,-1036 # 8000bac0 <_ZTV8Producer+0x10>
    80003ed4:	00f53023          	sd	a5,0(a0)
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	d04080e7          	jalr	-764(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80003ee0:	00048513          	mv	a0,s1
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	ca8080e7          	jalr	-856(ra) # 80001b8c <_ZdlPv>
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	01013403          	ld	s0,16(sp)
    80003ef4:	00813483          	ld	s1,8(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00008067          	ret

0000000080003f00 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003f00:	fe010113          	addi	sp,sp,-32
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	00813823          	sd	s0,16(sp)
    80003f0c:	00913423          	sd	s1,8(sp)
    80003f10:	02010413          	addi	s0,sp,32
    80003f14:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	5cc080e7          	jalr	1484(ra) # 800014e4 <_Z4getcv>
    80003f20:	0005059b          	sext.w	a1,a0
    80003f24:	01b00793          	li	a5,27
    80003f28:	00f58c63          	beq	a1,a5,80003f40 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003f2c:	0204b783          	ld	a5,32(s1)
    80003f30:	0087b503          	ld	a0,8(a5)
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	36c080e7          	jalr	876(ra) # 800052a0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003f3c:	fddff06f          	j	80003f18 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003f40:	00100793          	li	a5,1
    80003f44:	00008717          	auipc	a4,0x8
    80003f48:	e0f72223          	sw	a5,-508(a4) # 8000bd48 <_ZL9threadEnd>
        td->buffer->put('!');
    80003f4c:	0204b783          	ld	a5,32(s1)
    80003f50:	02100593          	li	a1,33
    80003f54:	0087b503          	ld	a0,8(a5)
    80003f58:	00001097          	auipc	ra,0x1
    80003f5c:	348080e7          	jalr	840(ra) # 800052a0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003f60:	0204b783          	ld	a5,32(s1)
    80003f64:	0107b503          	ld	a0,16(a5)
    80003f68:	ffffe097          	auipc	ra,0xffffe
    80003f6c:	fb0080e7          	jalr	-80(ra) # 80001f18 <_ZN9Semaphore6signalEv>
    }
    80003f70:	01813083          	ld	ra,24(sp)
    80003f74:	01013403          	ld	s0,16(sp)
    80003f78:	00813483          	ld	s1,8(sp)
    80003f7c:	02010113          	addi	sp,sp,32
    80003f80:	00008067          	ret

0000000080003f84 <_ZN8Producer3runEv>:
    void run() override {
    80003f84:	fe010113          	addi	sp,sp,-32
    80003f88:	00113c23          	sd	ra,24(sp)
    80003f8c:	00813823          	sd	s0,16(sp)
    80003f90:	00913423          	sd	s1,8(sp)
    80003f94:	01213023          	sd	s2,0(sp)
    80003f98:	02010413          	addi	s0,sp,32
    80003f9c:	00050493          	mv	s1,a0
        int i = 0;
    80003fa0:	00000913          	li	s2,0
        while (!threadEnd) {
    80003fa4:	00008797          	auipc	a5,0x8
    80003fa8:	da47a783          	lw	a5,-604(a5) # 8000bd48 <_ZL9threadEnd>
    80003fac:	04079263          	bnez	a5,80003ff0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003fb0:	0204b783          	ld	a5,32(s1)
    80003fb4:	0007a583          	lw	a1,0(a5)
    80003fb8:	0305859b          	addiw	a1,a1,48
    80003fbc:	0087b503          	ld	a0,8(a5)
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	2e0080e7          	jalr	736(ra) # 800052a0 <_ZN9BufferCPP3putEi>
            i++;
    80003fc8:	0019071b          	addiw	a4,s2,1
    80003fcc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003fd0:	0204b783          	ld	a5,32(s1)
    80003fd4:	0007a783          	lw	a5,0(a5)
    80003fd8:	00e787bb          	addw	a5,a5,a4
    80003fdc:	00500513          	li	a0,5
    80003fe0:	02a7e53b          	remw	a0,a5,a0
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	e80080e7          	jalr	-384(ra) # 80001e64 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003fec:	fb9ff06f          	j	80003fa4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003ff0:	0204b783          	ld	a5,32(s1)
    80003ff4:	0107b503          	ld	a0,16(a5)
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	f20080e7          	jalr	-224(ra) # 80001f18 <_ZN9Semaphore6signalEv>
    }
    80004000:	01813083          	ld	ra,24(sp)
    80004004:	01013403          	ld	s0,16(sp)
    80004008:	00813483          	ld	s1,8(sp)
    8000400c:	00013903          	ld	s2,0(sp)
    80004010:	02010113          	addi	sp,sp,32
    80004014:	00008067          	ret

0000000080004018 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004018:	fe010113          	addi	sp,sp,-32
    8000401c:	00113c23          	sd	ra,24(sp)
    80004020:	00813823          	sd	s0,16(sp)
    80004024:	00913423          	sd	s1,8(sp)
    80004028:	01213023          	sd	s2,0(sp)
    8000402c:	02010413          	addi	s0,sp,32
    80004030:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004034:	00100793          	li	a5,1
    80004038:	02a7f863          	bgeu	a5,a0,80004068 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000403c:	00a00793          	li	a5,10
    80004040:	02f577b3          	remu	a5,a0,a5
    80004044:	02078e63          	beqz	a5,80004080 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004048:	fff48513          	addi	a0,s1,-1
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	fcc080e7          	jalr	-52(ra) # 80004018 <_ZL9fibonaccim>
    80004054:	00050913          	mv	s2,a0
    80004058:	ffe48513          	addi	a0,s1,-2
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	fbc080e7          	jalr	-68(ra) # 80004018 <_ZL9fibonaccim>
    80004064:	00a90533          	add	a0,s2,a0
}
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	01013403          	ld	s0,16(sp)
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	00013903          	ld	s2,0(sp)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004080:	ffffd097          	auipc	ra,0xffffd
    80004084:	224080e7          	jalr	548(ra) # 800012a4 <_Z15thread_dispatchv>
    80004088:	fc1ff06f          	j	80004048 <_ZL9fibonaccim+0x30>

000000008000408c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	01213023          	sd	s2,0(sp)
    800040a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800040a4:	00a00493          	li	s1,10
    800040a8:	0400006f          	j	800040e8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040ac:	00005517          	auipc	a0,0x5
    800040b0:	24c50513          	addi	a0,a0,588 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	dc8080e7          	jalr	-568(ra) # 80004e7c <_Z11printStringPKc>
    800040bc:	00000613          	li	a2,0
    800040c0:	00a00593          	li	a1,10
    800040c4:	00048513          	mv	a0,s1
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	f64080e7          	jalr	-156(ra) # 8000502c <_Z8printIntiii>
    800040d0:	00005517          	auipc	a0,0x5
    800040d4:	6c850513          	addi	a0,a0,1736 # 80009798 <CONSOLE_STATUS+0x788>
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	da4080e7          	jalr	-604(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800040e0:	0014849b          	addiw	s1,s1,1
    800040e4:	0ff4f493          	andi	s1,s1,255
    800040e8:	00c00793          	li	a5,12
    800040ec:	fc97f0e3          	bgeu	a5,s1,800040ac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800040f0:	00005517          	auipc	a0,0x5
    800040f4:	21050513          	addi	a0,a0,528 # 80009300 <CONSOLE_STATUS+0x2f0>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	d84080e7          	jalr	-636(ra) # 80004e7c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004100:	00500313          	li	t1,5
    thread_dispatch();
    80004104:	ffffd097          	auipc	ra,0xffffd
    80004108:	1a0080e7          	jalr	416(ra) # 800012a4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000410c:	01000513          	li	a0,16
    80004110:	00000097          	auipc	ra,0x0
    80004114:	f08080e7          	jalr	-248(ra) # 80004018 <_ZL9fibonaccim>
    80004118:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000411c:	00005517          	auipc	a0,0x5
    80004120:	1f450513          	addi	a0,a0,500 # 80009310 <CONSOLE_STATUS+0x300>
    80004124:	00001097          	auipc	ra,0x1
    80004128:	d58080e7          	jalr	-680(ra) # 80004e7c <_Z11printStringPKc>
    8000412c:	00000613          	li	a2,0
    80004130:	00a00593          	li	a1,10
    80004134:	0009051b          	sext.w	a0,s2
    80004138:	00001097          	auipc	ra,0x1
    8000413c:	ef4080e7          	jalr	-268(ra) # 8000502c <_Z8printIntiii>
    80004140:	00005517          	auipc	a0,0x5
    80004144:	65850513          	addi	a0,a0,1624 # 80009798 <CONSOLE_STATUS+0x788>
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	d34080e7          	jalr	-716(ra) # 80004e7c <_Z11printStringPKc>
    80004150:	0400006f          	j	80004190 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004154:	00005517          	auipc	a0,0x5
    80004158:	1a450513          	addi	a0,a0,420 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	d20080e7          	jalr	-736(ra) # 80004e7c <_Z11printStringPKc>
    80004164:	00000613          	li	a2,0
    80004168:	00a00593          	li	a1,10
    8000416c:	00048513          	mv	a0,s1
    80004170:	00001097          	auipc	ra,0x1
    80004174:	ebc080e7          	jalr	-324(ra) # 8000502c <_Z8printIntiii>
    80004178:	00005517          	auipc	a0,0x5
    8000417c:	62050513          	addi	a0,a0,1568 # 80009798 <CONSOLE_STATUS+0x788>
    80004180:	00001097          	auipc	ra,0x1
    80004184:	cfc080e7          	jalr	-772(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004188:	0014849b          	addiw	s1,s1,1
    8000418c:	0ff4f493          	andi	s1,s1,255
    80004190:	00f00793          	li	a5,15
    80004194:	fc97f0e3          	bgeu	a5,s1,80004154 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004198:	00005517          	auipc	a0,0x5
    8000419c:	18850513          	addi	a0,a0,392 # 80009320 <CONSOLE_STATUS+0x310>
    800041a0:	00001097          	auipc	ra,0x1
    800041a4:	cdc080e7          	jalr	-804(ra) # 80004e7c <_Z11printStringPKc>
    finishedD = true;
    800041a8:	00100793          	li	a5,1
    800041ac:	00008717          	auipc	a4,0x8
    800041b0:	baf70623          	sb	a5,-1108(a4) # 8000bd58 <_ZL9finishedD>
    thread_dispatch();
    800041b4:	ffffd097          	auipc	ra,0xffffd
    800041b8:	0f0080e7          	jalr	240(ra) # 800012a4 <_Z15thread_dispatchv>
}
    800041bc:	01813083          	ld	ra,24(sp)
    800041c0:	01013403          	ld	s0,16(sp)
    800041c4:	00813483          	ld	s1,8(sp)
    800041c8:	00013903          	ld	s2,0(sp)
    800041cc:	02010113          	addi	sp,sp,32
    800041d0:	00008067          	ret

00000000800041d4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800041d4:	fe010113          	addi	sp,sp,-32
    800041d8:	00113c23          	sd	ra,24(sp)
    800041dc:	00813823          	sd	s0,16(sp)
    800041e0:	00913423          	sd	s1,8(sp)
    800041e4:	01213023          	sd	s2,0(sp)
    800041e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800041ec:	00000493          	li	s1,0
    800041f0:	0400006f          	j	80004230 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800041f4:	00005517          	auipc	a0,0x5
    800041f8:	0d450513          	addi	a0,a0,212 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	c80080e7          	jalr	-896(ra) # 80004e7c <_Z11printStringPKc>
    80004204:	00000613          	li	a2,0
    80004208:	00a00593          	li	a1,10
    8000420c:	00048513          	mv	a0,s1
    80004210:	00001097          	auipc	ra,0x1
    80004214:	e1c080e7          	jalr	-484(ra) # 8000502c <_Z8printIntiii>
    80004218:	00005517          	auipc	a0,0x5
    8000421c:	58050513          	addi	a0,a0,1408 # 80009798 <CONSOLE_STATUS+0x788>
    80004220:	00001097          	auipc	ra,0x1
    80004224:	c5c080e7          	jalr	-932(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004228:	0014849b          	addiw	s1,s1,1
    8000422c:	0ff4f493          	andi	s1,s1,255
    80004230:	00200793          	li	a5,2
    80004234:	fc97f0e3          	bgeu	a5,s1,800041f4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004238:	00005517          	auipc	a0,0x5
    8000423c:	09850513          	addi	a0,a0,152 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004240:	00001097          	auipc	ra,0x1
    80004244:	c3c080e7          	jalr	-964(ra) # 80004e7c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004248:	00700313          	li	t1,7
    thread_dispatch();
    8000424c:	ffffd097          	auipc	ra,0xffffd
    80004250:	058080e7          	jalr	88(ra) # 800012a4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004254:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004258:	00005517          	auipc	a0,0x5
    8000425c:	08850513          	addi	a0,a0,136 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004260:	00001097          	auipc	ra,0x1
    80004264:	c1c080e7          	jalr	-996(ra) # 80004e7c <_Z11printStringPKc>
    80004268:	00000613          	li	a2,0
    8000426c:	00a00593          	li	a1,10
    80004270:	0009051b          	sext.w	a0,s2
    80004274:	00001097          	auipc	ra,0x1
    80004278:	db8080e7          	jalr	-584(ra) # 8000502c <_Z8printIntiii>
    8000427c:	00005517          	auipc	a0,0x5
    80004280:	51c50513          	addi	a0,a0,1308 # 80009798 <CONSOLE_STATUS+0x788>
    80004284:	00001097          	auipc	ra,0x1
    80004288:	bf8080e7          	jalr	-1032(ra) # 80004e7c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000428c:	00c00513          	li	a0,12
    80004290:	00000097          	auipc	ra,0x0
    80004294:	d88080e7          	jalr	-632(ra) # 80004018 <_ZL9fibonaccim>
    80004298:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000429c:	00005517          	auipc	a0,0x5
    800042a0:	04c50513          	addi	a0,a0,76 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800042a4:	00001097          	auipc	ra,0x1
    800042a8:	bd8080e7          	jalr	-1064(ra) # 80004e7c <_Z11printStringPKc>
    800042ac:	00000613          	li	a2,0
    800042b0:	00a00593          	li	a1,10
    800042b4:	0009051b          	sext.w	a0,s2
    800042b8:	00001097          	auipc	ra,0x1
    800042bc:	d74080e7          	jalr	-652(ra) # 8000502c <_Z8printIntiii>
    800042c0:	00005517          	auipc	a0,0x5
    800042c4:	4d850513          	addi	a0,a0,1240 # 80009798 <CONSOLE_STATUS+0x788>
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	bb4080e7          	jalr	-1100(ra) # 80004e7c <_Z11printStringPKc>
    800042d0:	0400006f          	j	80004310 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800042d4:	00005517          	auipc	a0,0x5
    800042d8:	ff450513          	addi	a0,a0,-12 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800042dc:	00001097          	auipc	ra,0x1
    800042e0:	ba0080e7          	jalr	-1120(ra) # 80004e7c <_Z11printStringPKc>
    800042e4:	00000613          	li	a2,0
    800042e8:	00a00593          	li	a1,10
    800042ec:	00048513          	mv	a0,s1
    800042f0:	00001097          	auipc	ra,0x1
    800042f4:	d3c080e7          	jalr	-708(ra) # 8000502c <_Z8printIntiii>
    800042f8:	00005517          	auipc	a0,0x5
    800042fc:	4a050513          	addi	a0,a0,1184 # 80009798 <CONSOLE_STATUS+0x788>
    80004300:	00001097          	auipc	ra,0x1
    80004304:	b7c080e7          	jalr	-1156(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004308:	0014849b          	addiw	s1,s1,1
    8000430c:	0ff4f493          	andi	s1,s1,255
    80004310:	00500793          	li	a5,5
    80004314:	fc97f0e3          	bgeu	a5,s1,800042d4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004318:	00005517          	auipc	a0,0x5
    8000431c:	f8850513          	addi	a0,a0,-120 # 800092a0 <CONSOLE_STATUS+0x290>
    80004320:	00001097          	auipc	ra,0x1
    80004324:	b5c080e7          	jalr	-1188(ra) # 80004e7c <_Z11printStringPKc>
    finishedC = true;
    80004328:	00100793          	li	a5,1
    8000432c:	00008717          	auipc	a4,0x8
    80004330:	a2f706a3          	sb	a5,-1491(a4) # 8000bd59 <_ZL9finishedC>
    thread_dispatch();
    80004334:	ffffd097          	auipc	ra,0xffffd
    80004338:	f70080e7          	jalr	-144(ra) # 800012a4 <_Z15thread_dispatchv>
}
    8000433c:	01813083          	ld	ra,24(sp)
    80004340:	01013403          	ld	s0,16(sp)
    80004344:	00813483          	ld	s1,8(sp)
    80004348:	00013903          	ld	s2,0(sp)
    8000434c:	02010113          	addi	sp,sp,32
    80004350:	00008067          	ret

0000000080004354 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004354:	fe010113          	addi	sp,sp,-32
    80004358:	00113c23          	sd	ra,24(sp)
    8000435c:	00813823          	sd	s0,16(sp)
    80004360:	00913423          	sd	s1,8(sp)
    80004364:	01213023          	sd	s2,0(sp)
    80004368:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000436c:	00000913          	li	s2,0
    80004370:	0380006f          	j	800043a8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	f30080e7          	jalr	-208(ra) # 800012a4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000437c:	00148493          	addi	s1,s1,1
    80004380:	000027b7          	lui	a5,0x2
    80004384:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004388:	0097ee63          	bltu	a5,s1,800043a4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000438c:	00000713          	li	a4,0
    80004390:	000077b7          	lui	a5,0x7
    80004394:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004398:	fce7eee3          	bltu	a5,a4,80004374 <_ZL11workerBodyBPv+0x20>
    8000439c:	00170713          	addi	a4,a4,1
    800043a0:	ff1ff06f          	j	80004390 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800043a4:	00190913          	addi	s2,s2,1
    800043a8:	00f00793          	li	a5,15
    800043ac:	0527e063          	bltu	a5,s2,800043ec <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800043b0:	00005517          	auipc	a0,0x5
    800043b4:	f0050513          	addi	a0,a0,-256 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	ac4080e7          	jalr	-1340(ra) # 80004e7c <_Z11printStringPKc>
    800043c0:	00000613          	li	a2,0
    800043c4:	00a00593          	li	a1,10
    800043c8:	0009051b          	sext.w	a0,s2
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	c60080e7          	jalr	-928(ra) # 8000502c <_Z8printIntiii>
    800043d4:	00005517          	auipc	a0,0x5
    800043d8:	3c450513          	addi	a0,a0,964 # 80009798 <CONSOLE_STATUS+0x788>
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	aa0080e7          	jalr	-1376(ra) # 80004e7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043e4:	00000493          	li	s1,0
    800043e8:	f99ff06f          	j	80004380 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800043ec:	00005517          	auipc	a0,0x5
    800043f0:	ecc50513          	addi	a0,a0,-308 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	a88080e7          	jalr	-1400(ra) # 80004e7c <_Z11printStringPKc>
    finishedB = true;
    800043fc:	00100793          	li	a5,1
    80004400:	00008717          	auipc	a4,0x8
    80004404:	94f70d23          	sb	a5,-1702(a4) # 8000bd5a <_ZL9finishedB>
    thread_dispatch();
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	e9c080e7          	jalr	-356(ra) # 800012a4 <_Z15thread_dispatchv>
}
    80004410:	01813083          	ld	ra,24(sp)
    80004414:	01013403          	ld	s0,16(sp)
    80004418:	00813483          	ld	s1,8(sp)
    8000441c:	00013903          	ld	s2,0(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	01213023          	sd	s2,0(sp)
    8000443c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004440:	00000913          	li	s2,0
    80004444:	0380006f          	j	8000447c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004448:	ffffd097          	auipc	ra,0xffffd
    8000444c:	e5c080e7          	jalr	-420(ra) # 800012a4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004450:	00148493          	addi	s1,s1,1
    80004454:	000027b7          	lui	a5,0x2
    80004458:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000445c:	0097ee63          	bltu	a5,s1,80004478 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004460:	00000713          	li	a4,0
    80004464:	000077b7          	lui	a5,0x7
    80004468:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000446c:	fce7eee3          	bltu	a5,a4,80004448 <_ZL11workerBodyAPv+0x20>
    80004470:	00170713          	addi	a4,a4,1
    80004474:	ff1ff06f          	j	80004464 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004478:	00190913          	addi	s2,s2,1
    8000447c:	00900793          	li	a5,9
    80004480:	0527e063          	bltu	a5,s2,800044c0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	e1450513          	addi	a0,a0,-492 # 80009298 <CONSOLE_STATUS+0x288>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	9f0080e7          	jalr	-1552(ra) # 80004e7c <_Z11printStringPKc>
    80004494:	00000613          	li	a2,0
    80004498:	00a00593          	li	a1,10
    8000449c:	0009051b          	sext.w	a0,s2
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	b8c080e7          	jalr	-1140(ra) # 8000502c <_Z8printIntiii>
    800044a8:	00005517          	auipc	a0,0x5
    800044ac:	2f050513          	addi	a0,a0,752 # 80009798 <CONSOLE_STATUS+0x788>
    800044b0:	00001097          	auipc	ra,0x1
    800044b4:	9cc080e7          	jalr	-1588(ra) # 80004e7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800044b8:	00000493          	li	s1,0
    800044bc:	f99ff06f          	j	80004454 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800044c0:	00005517          	auipc	a0,0x5
    800044c4:	de050513          	addi	a0,a0,-544 # 800092a0 <CONSOLE_STATUS+0x290>
    800044c8:	00001097          	auipc	ra,0x1
    800044cc:	9b4080e7          	jalr	-1612(ra) # 80004e7c <_Z11printStringPKc>
    finishedA = true;
    800044d0:	00100793          	li	a5,1
    800044d4:	00008717          	auipc	a4,0x8
    800044d8:	88f703a3          	sb	a5,-1913(a4) # 8000bd5b <_ZL9finishedA>
}
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	00013903          	ld	s2,0(sp)
    800044ec:	02010113          	addi	sp,sp,32
    800044f0:	00008067          	ret

00000000800044f4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800044f4:	fd010113          	addi	sp,sp,-48
    800044f8:	02113423          	sd	ra,40(sp)
    800044fc:	02813023          	sd	s0,32(sp)
    80004500:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004504:	00000613          	li	a2,0
    80004508:	00000597          	auipc	a1,0x0
    8000450c:	f2058593          	addi	a1,a1,-224 # 80004428 <_ZL11workerBodyAPv>
    80004510:	fd040513          	addi	a0,s0,-48
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	d14080e7          	jalr	-748(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000451c:	00005517          	auipc	a0,0x5
    80004520:	e1450513          	addi	a0,a0,-492 # 80009330 <CONSOLE_STATUS+0x320>
    80004524:	00001097          	auipc	ra,0x1
    80004528:	958080e7          	jalr	-1704(ra) # 80004e7c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000452c:	00000613          	li	a2,0
    80004530:	00000597          	auipc	a1,0x0
    80004534:	e2458593          	addi	a1,a1,-476 # 80004354 <_ZL11workerBodyBPv>
    80004538:	fd840513          	addi	a0,s0,-40
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	cec080e7          	jalr	-788(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004544:	00005517          	auipc	a0,0x5
    80004548:	e0450513          	addi	a0,a0,-508 # 80009348 <CONSOLE_STATUS+0x338>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	930080e7          	jalr	-1744(ra) # 80004e7c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004554:	00000613          	li	a2,0
    80004558:	00000597          	auipc	a1,0x0
    8000455c:	c7c58593          	addi	a1,a1,-900 # 800041d4 <_ZL11workerBodyCPv>
    80004560:	fe040513          	addi	a0,s0,-32
    80004564:	ffffd097          	auipc	ra,0xffffd
    80004568:	cc4080e7          	jalr	-828(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	df450513          	addi	a0,a0,-524 # 80009360 <CONSOLE_STATUS+0x350>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	908080e7          	jalr	-1784(ra) # 80004e7c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000457c:	00000613          	li	a2,0
    80004580:	00000597          	auipc	a1,0x0
    80004584:	b0c58593          	addi	a1,a1,-1268 # 8000408c <_ZL11workerBodyDPv>
    80004588:	fe840513          	addi	a0,s0,-24
    8000458c:	ffffd097          	auipc	ra,0xffffd
    80004590:	c9c080e7          	jalr	-868(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004594:	00005517          	auipc	a0,0x5
    80004598:	de450513          	addi	a0,a0,-540 # 80009378 <CONSOLE_STATUS+0x368>
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	8e0080e7          	jalr	-1824(ra) # 80004e7c <_Z11printStringPKc>
    800045a4:	00c0006f          	j	800045b0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	cfc080e7          	jalr	-772(ra) # 800012a4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800045b0:	00007797          	auipc	a5,0x7
    800045b4:	7ab7c783          	lbu	a5,1963(a5) # 8000bd5b <_ZL9finishedA>
    800045b8:	fe0788e3          	beqz	a5,800045a8 <_Z18Threads_C_API_testv+0xb4>
    800045bc:	00007797          	auipc	a5,0x7
    800045c0:	79e7c783          	lbu	a5,1950(a5) # 8000bd5a <_ZL9finishedB>
    800045c4:	fe0782e3          	beqz	a5,800045a8 <_Z18Threads_C_API_testv+0xb4>
    800045c8:	00007797          	auipc	a5,0x7
    800045cc:	7917c783          	lbu	a5,1937(a5) # 8000bd59 <_ZL9finishedC>
    800045d0:	fc078ce3          	beqz	a5,800045a8 <_Z18Threads_C_API_testv+0xb4>
    800045d4:	00007797          	auipc	a5,0x7
    800045d8:	7847c783          	lbu	a5,1924(a5) # 8000bd58 <_ZL9finishedD>
    800045dc:	fc0786e3          	beqz	a5,800045a8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800045e0:	02813083          	ld	ra,40(sp)
    800045e4:	02013403          	ld	s0,32(sp)
    800045e8:	03010113          	addi	sp,sp,48
    800045ec:	00008067          	ret

00000000800045f0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800045f0:	fd010113          	addi	sp,sp,-48
    800045f4:	02113423          	sd	ra,40(sp)
    800045f8:	02813023          	sd	s0,32(sp)
    800045fc:	00913c23          	sd	s1,24(sp)
    80004600:	01213823          	sd	s2,16(sp)
    80004604:	01313423          	sd	s3,8(sp)
    80004608:	03010413          	addi	s0,sp,48
    8000460c:	00050993          	mv	s3,a0
    80004610:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004614:	00000913          	li	s2,0
    80004618:	00c0006f          	j	80004624 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        data->buffer->put(key);
        i++;


 if(i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	7f4080e7          	jalr	2036(ra) # 80001e10 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004624:	ffffd097          	auipc	ra,0xffffd
    80004628:	ec0080e7          	jalr	-320(ra) # 800014e4 <_Z4getcv>
    8000462c:	0005059b          	sext.w	a1,a0
    80004630:	01b00793          	li	a5,27
    80004634:	02f58a63          	beq	a1,a5,80004668 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004638:	0084b503          	ld	a0,8(s1)
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	c64080e7          	jalr	-924(ra) # 800052a0 <_ZN9BufferCPP3putEi>
        i++;
    80004644:	0019071b          	addiw	a4,s2,1
    80004648:	0007091b          	sext.w	s2,a4
 if(i % (10 * data->id) == 0) {
    8000464c:	0004a683          	lw	a3,0(s1)
    80004650:	0026979b          	slliw	a5,a3,0x2
    80004654:	00d787bb          	addw	a5,a5,a3
    80004658:	0017979b          	slliw	a5,a5,0x1
    8000465c:	02f767bb          	remw	a5,a4,a5
    80004660:	fc0792e3          	bnez	a5,80004624 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004664:	fb9ff06f          	j	8000461c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004668:	00100793          	li	a5,1
    8000466c:	00007717          	auipc	a4,0x7
    80004670:	6ef72a23          	sw	a5,1780(a4) # 8000bd60 <_ZL9threadEnd>
    td->buffer->put('!');
    80004674:	0209b783          	ld	a5,32(s3)
    80004678:	02100593          	li	a1,33
    8000467c:	0087b503          	ld	a0,8(a5)
    80004680:	00001097          	auipc	ra,0x1
    80004684:	c20080e7          	jalr	-992(ra) # 800052a0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004688:	0104b503          	ld	a0,16(s1)
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	88c080e7          	jalr	-1908(ra) # 80001f18 <_ZN9Semaphore6signalEv>
}
    80004694:	02813083          	ld	ra,40(sp)
    80004698:	02013403          	ld	s0,32(sp)
    8000469c:	01813483          	ld	s1,24(sp)
    800046a0:	01013903          	ld	s2,16(sp)
    800046a4:	00813983          	ld	s3,8(sp)
    800046a8:	03010113          	addi	sp,sp,48
    800046ac:	00008067          	ret

00000000800046b0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800046b0:	fe010113          	addi	sp,sp,-32
    800046b4:	00113c23          	sd	ra,24(sp)
    800046b8:	00813823          	sd	s0,16(sp)
    800046bc:	00913423          	sd	s1,8(sp)
    800046c0:	01213023          	sd	s2,0(sp)
    800046c4:	02010413          	addi	s0,sp,32
    800046c8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800046cc:	00000913          	li	s2,0
    800046d0:	00c0006f          	j	800046dc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	73c080e7          	jalr	1852(ra) # 80001e10 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800046dc:	00007797          	auipc	a5,0x7
    800046e0:	6847a783          	lw	a5,1668(a5) # 8000bd60 <_ZL9threadEnd>
    800046e4:	02079e63          	bnez	a5,80004720 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800046e8:	0004a583          	lw	a1,0(s1)
    800046ec:	0305859b          	addiw	a1,a1,48
    800046f0:	0084b503          	ld	a0,8(s1)
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	bac080e7          	jalr	-1108(ra) # 800052a0 <_ZN9BufferCPP3putEi>
        i++;
    800046fc:	0019071b          	addiw	a4,s2,1
    80004700:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004704:	0004a683          	lw	a3,0(s1)
    80004708:	0026979b          	slliw	a5,a3,0x2
    8000470c:	00d787bb          	addw	a5,a5,a3
    80004710:	0017979b          	slliw	a5,a5,0x1
    80004714:	02f767bb          	remw	a5,a4,a5
    80004718:	fc0792e3          	bnez	a5,800046dc <_ZN12ProducerSync8producerEPv+0x2c>
    8000471c:	fb9ff06f          	j	800046d4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004720:	0104b503          	ld	a0,16(s1)
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	7f4080e7          	jalr	2036(ra) # 80001f18 <_ZN9Semaphore6signalEv>
}
    8000472c:	01813083          	ld	ra,24(sp)
    80004730:	01013403          	ld	s0,16(sp)
    80004734:	00813483          	ld	s1,8(sp)
    80004738:	00013903          	ld	s2,0(sp)
    8000473c:	02010113          	addi	sp,sp,32
    80004740:	00008067          	ret

0000000080004744 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004744:	fd010113          	addi	sp,sp,-48
    80004748:	02113423          	sd	ra,40(sp)
    8000474c:	02813023          	sd	s0,32(sp)
    80004750:	00913c23          	sd	s1,24(sp)
    80004754:	01213823          	sd	s2,16(sp)
    80004758:	01313423          	sd	s3,8(sp)
    8000475c:	01413023          	sd	s4,0(sp)
    80004760:	03010413          	addi	s0,sp,48
    80004764:	00050993          	mv	s3,a0
    80004768:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000476c:	00000a13          	li	s4,0
    80004770:	01c0006f          	j	8000478c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	69c080e7          	jalr	1692(ra) # 80001e10 <_ZN6Thread8dispatchEv>
    8000477c:	0500006f          	j	800047cc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004780:	00a00513          	li	a0,10
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	d98080e7          	jalr	-616(ra) # 8000151c <_Z4putcc>
    while (!threadEnd) {
    8000478c:	00007797          	auipc	a5,0x7
    80004790:	5d47a783          	lw	a5,1492(a5) # 8000bd60 <_ZL9threadEnd>
    80004794:	06079263          	bnez	a5,800047f8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004798:	00893503          	ld	a0,8(s2)
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	b94080e7          	jalr	-1132(ra) # 80005330 <_ZN9BufferCPP3getEv>
        i++;
    800047a4:	001a049b          	addiw	s1,s4,1
    800047a8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800047ac:	0ff57513          	andi	a0,a0,255
    800047b0:	ffffd097          	auipc	ra,0xffffd
    800047b4:	d6c080e7          	jalr	-660(ra) # 8000151c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800047b8:	00092703          	lw	a4,0(s2)
    800047bc:	0027179b          	slliw	a5,a4,0x2
    800047c0:	00e787bb          	addw	a5,a5,a4
    800047c4:	02f4e7bb          	remw	a5,s1,a5
    800047c8:	fa0786e3          	beqz	a5,80004774 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800047cc:	05000793          	li	a5,80
    800047d0:	02f4e4bb          	remw	s1,s1,a5
    800047d4:	fa049ce3          	bnez	s1,8000478c <_ZN12ConsumerSync8consumerEPv+0x48>
    800047d8:	fa9ff06f          	j	80004780 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800047dc:	0209b783          	ld	a5,32(s3)
    800047e0:	0087b503          	ld	a0,8(a5)
    800047e4:	00001097          	auipc	ra,0x1
    800047e8:	b4c080e7          	jalr	-1204(ra) # 80005330 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800047ec:	0ff57513          	andi	a0,a0,255
    800047f0:	ffffd097          	auipc	ra,0xffffd
    800047f4:	7d4080e7          	jalr	2004(ra) # 80001fc4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800047f8:	0209b783          	ld	a5,32(s3)
    800047fc:	0087b503          	ld	a0,8(a5)
    80004800:	00001097          	auipc	ra,0x1
    80004804:	bbc080e7          	jalr	-1092(ra) # 800053bc <_ZN9BufferCPP6getCntEv>
    80004808:	fca04ae3          	bgtz	a0,800047dc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000480c:	01093503          	ld	a0,16(s2)
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	708080e7          	jalr	1800(ra) # 80001f18 <_ZN9Semaphore6signalEv>
}
    80004818:	02813083          	ld	ra,40(sp)
    8000481c:	02013403          	ld	s0,32(sp)
    80004820:	01813483          	ld	s1,24(sp)
    80004824:	01013903          	ld	s2,16(sp)
    80004828:	00813983          	ld	s3,8(sp)
    8000482c:	00013a03          	ld	s4,0(sp)
    80004830:	03010113          	addi	sp,sp,48
    80004834:	00008067          	ret

0000000080004838 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004838:	f8010113          	addi	sp,sp,-128
    8000483c:	06113c23          	sd	ra,120(sp)
    80004840:	06813823          	sd	s0,112(sp)
    80004844:	06913423          	sd	s1,104(sp)
    80004848:	07213023          	sd	s2,96(sp)
    8000484c:	05313c23          	sd	s3,88(sp)
    80004850:	05413823          	sd	s4,80(sp)
    80004854:	05513423          	sd	s5,72(sp)
    80004858:	05613023          	sd	s6,64(sp)
    8000485c:	03713c23          	sd	s7,56(sp)
    80004860:	03813823          	sd	s8,48(sp)
    80004864:	03913423          	sd	s9,40(sp)
    80004868:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000486c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	94050513          	addi	a0,a0,-1728 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	604080e7          	jalr	1540(ra) # 80004e7c <_Z11printStringPKc>
    getString(input, 30);
    80004880:	01e00593          	li	a1,30
    80004884:	f8040493          	addi	s1,s0,-128
    80004888:	00048513          	mv	a0,s1
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	678080e7          	jalr	1656(ra) # 80004f04 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004894:	00048513          	mv	a0,s1
    80004898:	00000097          	auipc	ra,0x0
    8000489c:	744080e7          	jalr	1860(ra) # 80004fdc <_Z11stringToIntPKc>
    800048a0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800048a4:	00005517          	auipc	a0,0x5
    800048a8:	92c50513          	addi	a0,a0,-1748 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	5d0080e7          	jalr	1488(ra) # 80004e7c <_Z11printStringPKc>
    getString(input, 30);
    800048b4:	01e00593          	li	a1,30
    800048b8:	00048513          	mv	a0,s1
    800048bc:	00000097          	auipc	ra,0x0
    800048c0:	648080e7          	jalr	1608(ra) # 80004f04 <_Z9getStringPci>
    n = stringToInt(input);
    800048c4:	00048513          	mv	a0,s1
    800048c8:	00000097          	auipc	ra,0x0
    800048cc:	714080e7          	jalr	1812(ra) # 80004fdc <_Z11stringToIntPKc>
    800048d0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800048d4:	00005517          	auipc	a0,0x5
    800048d8:	91c50513          	addi	a0,a0,-1764 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	5a0080e7          	jalr	1440(ra) # 80004e7c <_Z11printStringPKc>
    800048e4:	00000613          	li	a2,0
    800048e8:	00a00593          	li	a1,10
    800048ec:	00090513          	mv	a0,s2
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	73c080e7          	jalr	1852(ra) # 8000502c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800048f8:	00005517          	auipc	a0,0x5
    800048fc:	91050513          	addi	a0,a0,-1776 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004900:	00000097          	auipc	ra,0x0
    80004904:	57c080e7          	jalr	1404(ra) # 80004e7c <_Z11printStringPKc>
    80004908:	00000613          	li	a2,0
    8000490c:	00a00593          	li	a1,10
    80004910:	00048513          	mv	a0,s1
    80004914:	00000097          	auipc	ra,0x0
    80004918:	718080e7          	jalr	1816(ra) # 8000502c <_Z8printIntiii>
    printString(".\n");
    8000491c:	00005517          	auipc	a0,0x5
    80004920:	90450513          	addi	a0,a0,-1788 # 80009220 <CONSOLE_STATUS+0x210>
    80004924:	00000097          	auipc	ra,0x0
    80004928:	558080e7          	jalr	1368(ra) # 80004e7c <_Z11printStringPKc>
    if(threadNum > n) {
    8000492c:	0324c463          	blt	s1,s2,80004954 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004930:	03205c63          	blez	s2,80004968 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004934:	03800513          	li	a0,56
    80004938:	ffffd097          	auipc	ra,0xffffd
    8000493c:	204080e7          	jalr	516(ra) # 80001b3c <_Znwm>
    80004940:	00050a93          	mv	s5,a0
    80004944:	00048593          	mv	a1,s1
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	804080e7          	jalr	-2044(ra) # 8000514c <_ZN9BufferCPPC1Ei>
    80004950:	0300006f          	j	80004980 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004954:	00005517          	auipc	a0,0x5
    80004958:	8d450513          	addi	a0,a0,-1836 # 80009228 <CONSOLE_STATUS+0x218>
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	520080e7          	jalr	1312(ra) # 80004e7c <_Z11printStringPKc>
        return;
    80004964:	0140006f          	j	80004978 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004968:	00005517          	auipc	a0,0x5
    8000496c:	90050513          	addi	a0,a0,-1792 # 80009268 <CONSOLE_STATUS+0x258>
    80004970:	00000097          	auipc	ra,0x0
    80004974:	50c080e7          	jalr	1292(ra) # 80004e7c <_Z11printStringPKc>
        return;
    80004978:	000b8113          	mv	sp,s7
    8000497c:	2380006f          	j	80004bb4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004980:	01000513          	li	a0,16
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	1b8080e7          	jalr	440(ra) # 80001b3c <_Znwm>
    8000498c:	00050493          	mv	s1,a0
    80004990:	00000593          	li	a1,0
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	520080e7          	jalr	1312(ra) # 80001eb4 <_ZN9SemaphoreC1Ej>
    8000499c:	00007797          	auipc	a5,0x7
    800049a0:	3c97b623          	sd	s1,972(a5) # 8000bd68 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800049a4:	00391793          	slli	a5,s2,0x3
    800049a8:	00f78793          	addi	a5,a5,15
    800049ac:	ff07f793          	andi	a5,a5,-16
    800049b0:	40f10133          	sub	sp,sp,a5
    800049b4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800049b8:	0019071b          	addiw	a4,s2,1
    800049bc:	00171793          	slli	a5,a4,0x1
    800049c0:	00e787b3          	add	a5,a5,a4
    800049c4:	00379793          	slli	a5,a5,0x3
    800049c8:	00f78793          	addi	a5,a5,15
    800049cc:	ff07f793          	andi	a5,a5,-16
    800049d0:	40f10133          	sub	sp,sp,a5
    800049d4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800049d8:	00191c13          	slli	s8,s2,0x1
    800049dc:	012c07b3          	add	a5,s8,s2
    800049e0:	00379793          	slli	a5,a5,0x3
    800049e4:	00fa07b3          	add	a5,s4,a5
    800049e8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800049ec:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800049f0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800049f4:	02800513          	li	a0,40
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	144080e7          	jalr	324(ra) # 80001b3c <_Znwm>
    80004a00:	00050b13          	mv	s6,a0
    80004a04:	012c0c33          	add	s8,s8,s2
    80004a08:	003c1c13          	slli	s8,s8,0x3
    80004a0c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	37c080e7          	jalr	892(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80004a18:	00007797          	auipc	a5,0x7
    80004a1c:	14878793          	addi	a5,a5,328 # 8000bb60 <_ZTV12ConsumerSync+0x10>
    80004a20:	00fb3023          	sd	a5,0(s6)
    80004a24:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004a28:	000b0513          	mv	a0,s6
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	3b4080e7          	jalr	948(ra) # 80001de0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004a34:	00000493          	li	s1,0
    80004a38:	0380006f          	j	80004a70 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004a3c:	00007797          	auipc	a5,0x7
    80004a40:	0fc78793          	addi	a5,a5,252 # 8000bb38 <_ZTV12ProducerSync+0x10>
    80004a44:	00fcb023          	sd	a5,0(s9)
    80004a48:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004a4c:	00349793          	slli	a5,s1,0x3
    80004a50:	00f987b3          	add	a5,s3,a5
    80004a54:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004a58:	00349793          	slli	a5,s1,0x3
    80004a5c:	00f987b3          	add	a5,s3,a5
    80004a60:	0007b503          	ld	a0,0(a5)
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	37c080e7          	jalr	892(ra) # 80001de0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004a6c:	0014849b          	addiw	s1,s1,1
    80004a70:	0b24d063          	bge	s1,s2,80004b10 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004a74:	00149793          	slli	a5,s1,0x1
    80004a78:	009787b3          	add	a5,a5,s1
    80004a7c:	00379793          	slli	a5,a5,0x3
    80004a80:	00fa07b3          	add	a5,s4,a5
    80004a84:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004a88:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004a8c:	00007717          	auipc	a4,0x7
    80004a90:	2dc73703          	ld	a4,732(a4) # 8000bd68 <_ZL10waitForAll>
    80004a94:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004a98:	02905863          	blez	s1,80004ac8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004a9c:	02800513          	li	a0,40
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	09c080e7          	jalr	156(ra) # 80001b3c <_Znwm>
    80004aa8:	00050c93          	mv	s9,a0
    80004aac:	00149c13          	slli	s8,s1,0x1
    80004ab0:	009c0c33          	add	s8,s8,s1
    80004ab4:	003c1c13          	slli	s8,s8,0x3
    80004ab8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	2d0080e7          	jalr	720(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80004ac4:	f79ff06f          	j	80004a3c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ac8:	02800513          	li	a0,40
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	070080e7          	jalr	112(ra) # 80001b3c <_Znwm>
    80004ad4:	00050c93          	mv	s9,a0
    80004ad8:	00149c13          	slli	s8,s1,0x1
    80004adc:	009c0c33          	add	s8,s8,s1
    80004ae0:	003c1c13          	slli	s8,s8,0x3
    80004ae4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	2a4080e7          	jalr	676(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80004af0:	00007797          	auipc	a5,0x7
    80004af4:	02078793          	addi	a5,a5,32 # 8000bb10 <_ZTV16ProducerKeyboard+0x10>
    80004af8:	00fcb023          	sd	a5,0(s9)
    80004afc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004b00:	00349793          	slli	a5,s1,0x3
    80004b04:	00f987b3          	add	a5,s3,a5
    80004b08:	0197b023          	sd	s9,0(a5)
    80004b0c:	f4dff06f          	j	80004a58 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004b10:	ffffd097          	auipc	ra,0xffffd
    80004b14:	300080e7          	jalr	768(ra) # 80001e10 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b18:	00000493          	li	s1,0
    80004b1c:	00994e63          	blt	s2,s1,80004b38 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004b20:	00007517          	auipc	a0,0x7
    80004b24:	24853503          	ld	a0,584(a0) # 8000bd68 <_ZL10waitForAll>
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	3c4080e7          	jalr	964(ra) # 80001eec <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b30:	0014849b          	addiw	s1,s1,1
    80004b34:	fe9ff06f          	j	80004b1c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004b38:	00000493          	li	s1,0
    80004b3c:	0080006f          	j	80004b44 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004b40:	0014849b          	addiw	s1,s1,1
    80004b44:	0324d263          	bge	s1,s2,80004b68 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004b48:	00349793          	slli	a5,s1,0x3
    80004b4c:	00f987b3          	add	a5,s3,a5
    80004b50:	0007b503          	ld	a0,0(a5)
    80004b54:	fe0506e3          	beqz	a0,80004b40 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004b58:	00053783          	ld	a5,0(a0)
    80004b5c:	0087b783          	ld	a5,8(a5)
    80004b60:	000780e7          	jalr	a5
    80004b64:	fddff06f          	j	80004b40 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004b68:	000b0a63          	beqz	s6,80004b7c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004b6c:	000b3783          	ld	a5,0(s6)
    80004b70:	0087b783          	ld	a5,8(a5)
    80004b74:	000b0513          	mv	a0,s6
    80004b78:	000780e7          	jalr	a5
    delete waitForAll;
    80004b7c:	00007517          	auipc	a0,0x7
    80004b80:	1ec53503          	ld	a0,492(a0) # 8000bd68 <_ZL10waitForAll>
    80004b84:	00050863          	beqz	a0,80004b94 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004b88:	00053783          	ld	a5,0(a0)
    80004b8c:	0087b783          	ld	a5,8(a5)
    80004b90:	000780e7          	jalr	a5
    delete buffer;
    80004b94:	000a8e63          	beqz	s5,80004bb0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004b98:	000a8513          	mv	a0,s5
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	8a8080e7          	jalr	-1880(ra) # 80005444 <_ZN9BufferCPPD1Ev>
    80004ba4:	000a8513          	mv	a0,s5
    80004ba8:	ffffd097          	auipc	ra,0xffffd
    80004bac:	fe4080e7          	jalr	-28(ra) # 80001b8c <_ZdlPv>
    80004bb0:	000b8113          	mv	sp,s7

}
    80004bb4:	f8040113          	addi	sp,s0,-128
    80004bb8:	07813083          	ld	ra,120(sp)
    80004bbc:	07013403          	ld	s0,112(sp)
    80004bc0:	06813483          	ld	s1,104(sp)
    80004bc4:	06013903          	ld	s2,96(sp)
    80004bc8:	05813983          	ld	s3,88(sp)
    80004bcc:	05013a03          	ld	s4,80(sp)
    80004bd0:	04813a83          	ld	s5,72(sp)
    80004bd4:	04013b03          	ld	s6,64(sp)
    80004bd8:	03813b83          	ld	s7,56(sp)
    80004bdc:	03013c03          	ld	s8,48(sp)
    80004be0:	02813c83          	ld	s9,40(sp)
    80004be4:	08010113          	addi	sp,sp,128
    80004be8:	00008067          	ret
    80004bec:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004bf0:	000a8513          	mv	a0,s5
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	f98080e7          	jalr	-104(ra) # 80001b8c <_ZdlPv>
    80004bfc:	00048513          	mv	a0,s1
    80004c00:	00008097          	auipc	ra,0x8
    80004c04:	258080e7          	jalr	600(ra) # 8000ce58 <_Unwind_Resume>
    80004c08:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004c0c:	00048513          	mv	a0,s1
    80004c10:	ffffd097          	auipc	ra,0xffffd
    80004c14:	f7c080e7          	jalr	-132(ra) # 80001b8c <_ZdlPv>
    80004c18:	00090513          	mv	a0,s2
    80004c1c:	00008097          	auipc	ra,0x8
    80004c20:	23c080e7          	jalr	572(ra) # 8000ce58 <_Unwind_Resume>
    80004c24:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004c28:	000b0513          	mv	a0,s6
    80004c2c:	ffffd097          	auipc	ra,0xffffd
    80004c30:	f60080e7          	jalr	-160(ra) # 80001b8c <_ZdlPv>
    80004c34:	00048513          	mv	a0,s1
    80004c38:	00008097          	auipc	ra,0x8
    80004c3c:	220080e7          	jalr	544(ra) # 8000ce58 <_Unwind_Resume>
    80004c40:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004c44:	000c8513          	mv	a0,s9
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	f44080e7          	jalr	-188(ra) # 80001b8c <_ZdlPv>
    80004c50:	00048513          	mv	a0,s1
    80004c54:	00008097          	auipc	ra,0x8
    80004c58:	204080e7          	jalr	516(ra) # 8000ce58 <_Unwind_Resume>
    80004c5c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004c60:	000c8513          	mv	a0,s9
    80004c64:	ffffd097          	auipc	ra,0xffffd
    80004c68:	f28080e7          	jalr	-216(ra) # 80001b8c <_ZdlPv>
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	00008097          	auipc	ra,0x8
    80004c74:	1e8080e7          	jalr	488(ra) # 8000ce58 <_Unwind_Resume>

0000000080004c78 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004c78:	ff010113          	addi	sp,sp,-16
    80004c7c:	00113423          	sd	ra,8(sp)
    80004c80:	00813023          	sd	s0,0(sp)
    80004c84:	01010413          	addi	s0,sp,16
    80004c88:	00007797          	auipc	a5,0x7
    80004c8c:	ed878793          	addi	a5,a5,-296 # 8000bb60 <_ZTV12ConsumerSync+0x10>
    80004c90:	00f53023          	sd	a5,0(a0)
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	f48080e7          	jalr	-184(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80004c9c:	00813083          	ld	ra,8(sp)
    80004ca0:	00013403          	ld	s0,0(sp)
    80004ca4:	01010113          	addi	sp,sp,16
    80004ca8:	00008067          	ret

0000000080004cac <_ZN12ConsumerSyncD0Ev>:
    80004cac:	fe010113          	addi	sp,sp,-32
    80004cb0:	00113c23          	sd	ra,24(sp)
    80004cb4:	00813823          	sd	s0,16(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    80004cc0:	00050493          	mv	s1,a0
    80004cc4:	00007797          	auipc	a5,0x7
    80004cc8:	e9c78793          	addi	a5,a5,-356 # 8000bb60 <_ZTV12ConsumerSync+0x10>
    80004ccc:	00f53023          	sd	a5,0(a0)
    80004cd0:	ffffd097          	auipc	ra,0xffffd
    80004cd4:	f0c080e7          	jalr	-244(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80004cd8:	00048513          	mv	a0,s1
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	eb0080e7          	jalr	-336(ra) # 80001b8c <_ZdlPv>
    80004ce4:	01813083          	ld	ra,24(sp)
    80004ce8:	01013403          	ld	s0,16(sp)
    80004cec:	00813483          	ld	s1,8(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret

0000000080004cf8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004cf8:	ff010113          	addi	sp,sp,-16
    80004cfc:	00113423          	sd	ra,8(sp)
    80004d00:	00813023          	sd	s0,0(sp)
    80004d04:	01010413          	addi	s0,sp,16
    80004d08:	00007797          	auipc	a5,0x7
    80004d0c:	e3078793          	addi	a5,a5,-464 # 8000bb38 <_ZTV12ProducerSync+0x10>
    80004d10:	00f53023          	sd	a5,0(a0)
    80004d14:	ffffd097          	auipc	ra,0xffffd
    80004d18:	ec8080e7          	jalr	-312(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80004d1c:	00813083          	ld	ra,8(sp)
    80004d20:	00013403          	ld	s0,0(sp)
    80004d24:	01010113          	addi	sp,sp,16
    80004d28:	00008067          	ret

0000000080004d2c <_ZN12ProducerSyncD0Ev>:
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00113c23          	sd	ra,24(sp)
    80004d34:	00813823          	sd	s0,16(sp)
    80004d38:	00913423          	sd	s1,8(sp)
    80004d3c:	02010413          	addi	s0,sp,32
    80004d40:	00050493          	mv	s1,a0
    80004d44:	00007797          	auipc	a5,0x7
    80004d48:	df478793          	addi	a5,a5,-524 # 8000bb38 <_ZTV12ProducerSync+0x10>
    80004d4c:	00f53023          	sd	a5,0(a0)
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	e8c080e7          	jalr	-372(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80004d58:	00048513          	mv	a0,s1
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	e30080e7          	jalr	-464(ra) # 80001b8c <_ZdlPv>
    80004d64:	01813083          	ld	ra,24(sp)
    80004d68:	01013403          	ld	s0,16(sp)
    80004d6c:	00813483          	ld	s1,8(sp)
    80004d70:	02010113          	addi	sp,sp,32
    80004d74:	00008067          	ret

0000000080004d78 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004d78:	ff010113          	addi	sp,sp,-16
    80004d7c:	00113423          	sd	ra,8(sp)
    80004d80:	00813023          	sd	s0,0(sp)
    80004d84:	01010413          	addi	s0,sp,16
    80004d88:	00007797          	auipc	a5,0x7
    80004d8c:	d8878793          	addi	a5,a5,-632 # 8000bb10 <_ZTV16ProducerKeyboard+0x10>
    80004d90:	00f53023          	sd	a5,0(a0)
    80004d94:	ffffd097          	auipc	ra,0xffffd
    80004d98:	e48080e7          	jalr	-440(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80004d9c:	00813083          	ld	ra,8(sp)
    80004da0:	00013403          	ld	s0,0(sp)
    80004da4:	01010113          	addi	sp,sp,16
    80004da8:	00008067          	ret

0000000080004dac <_ZN16ProducerKeyboardD0Ev>:
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00113c23          	sd	ra,24(sp)
    80004db4:	00813823          	sd	s0,16(sp)
    80004db8:	00913423          	sd	s1,8(sp)
    80004dbc:	02010413          	addi	s0,sp,32
    80004dc0:	00050493          	mv	s1,a0
    80004dc4:	00007797          	auipc	a5,0x7
    80004dc8:	d4c78793          	addi	a5,a5,-692 # 8000bb10 <_ZTV16ProducerKeyboard+0x10>
    80004dcc:	00f53023          	sd	a5,0(a0)
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	e0c080e7          	jalr	-500(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	db0080e7          	jalr	-592(ra) # 80001b8c <_ZdlPv>
    80004de4:	01813083          	ld	ra,24(sp)
    80004de8:	01013403          	ld	s0,16(sp)
    80004dec:	00813483          	ld	s1,8(sp)
    80004df0:	02010113          	addi	sp,sp,32
    80004df4:	00008067          	ret

0000000080004df8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004df8:	ff010113          	addi	sp,sp,-16
    80004dfc:	00113423          	sd	ra,8(sp)
    80004e00:	00813023          	sd	s0,0(sp)
    80004e04:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004e08:	02053583          	ld	a1,32(a0)
    80004e0c:	fffff097          	auipc	ra,0xfffff
    80004e10:	7e4080e7          	jalr	2020(ra) # 800045f0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004e14:	00813083          	ld	ra,8(sp)
    80004e18:	00013403          	ld	s0,0(sp)
    80004e1c:	01010113          	addi	sp,sp,16
    80004e20:	00008067          	ret

0000000080004e24 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004e24:	ff010113          	addi	sp,sp,-16
    80004e28:	00113423          	sd	ra,8(sp)
    80004e2c:	00813023          	sd	s0,0(sp)
    80004e30:	01010413          	addi	s0,sp,16
        producer(td);
    80004e34:	02053583          	ld	a1,32(a0)
    80004e38:	00000097          	auipc	ra,0x0
    80004e3c:	878080e7          	jalr	-1928(ra) # 800046b0 <_ZN12ProducerSync8producerEPv>
    }
    80004e40:	00813083          	ld	ra,8(sp)
    80004e44:	00013403          	ld	s0,0(sp)
    80004e48:	01010113          	addi	sp,sp,16
    80004e4c:	00008067          	ret

0000000080004e50 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004e50:	ff010113          	addi	sp,sp,-16
    80004e54:	00113423          	sd	ra,8(sp)
    80004e58:	00813023          	sd	s0,0(sp)
    80004e5c:	01010413          	addi	s0,sp,16
        consumer(td);
    80004e60:	02053583          	ld	a1,32(a0)
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	8e0080e7          	jalr	-1824(ra) # 80004744 <_ZN12ConsumerSync8consumerEPv>
    }
    80004e6c:	00813083          	ld	ra,8(sp)
    80004e70:	00013403          	ld	s0,0(sp)
    80004e74:	01010113          	addi	sp,sp,16
    80004e78:	00008067          	ret

0000000080004e7c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004e7c:	fe010113          	addi	sp,sp,-32
    80004e80:	00113c23          	sd	ra,24(sp)
    80004e84:	00813823          	sd	s0,16(sp)
    80004e88:	00913423          	sd	s1,8(sp)
    80004e8c:	02010413          	addi	s0,sp,32
    80004e90:	00050493          	mv	s1,a0
    LOCK();
    80004e94:	00100613          	li	a2,1
    80004e98:	00000593          	li	a1,0
    80004e9c:	00007517          	auipc	a0,0x7
    80004ea0:	ed450513          	addi	a0,a0,-300 # 8000bd70 <lockPrint>
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	280080e7          	jalr	640(ra) # 80001124 <copy_and_swap>
    80004eac:	00050863          	beqz	a0,80004ebc <_Z11printStringPKc+0x40>
    80004eb0:	ffffc097          	auipc	ra,0xffffc
    80004eb4:	3f4080e7          	jalr	1012(ra) # 800012a4 <_Z15thread_dispatchv>
    80004eb8:	fddff06f          	j	80004e94 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004ebc:	0004c503          	lbu	a0,0(s1)
    80004ec0:	00050a63          	beqz	a0,80004ed4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	658080e7          	jalr	1624(ra) # 8000151c <_Z4putcc>
        string++;
    80004ecc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004ed0:	fedff06f          	j	80004ebc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004ed4:	00000613          	li	a2,0
    80004ed8:	00100593          	li	a1,1
    80004edc:	00007517          	auipc	a0,0x7
    80004ee0:	e9450513          	addi	a0,a0,-364 # 8000bd70 <lockPrint>
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	240080e7          	jalr	576(ra) # 80001124 <copy_and_swap>
    80004eec:	fe0514e3          	bnez	a0,80004ed4 <_Z11printStringPKc+0x58>
}
    80004ef0:	01813083          	ld	ra,24(sp)
    80004ef4:	01013403          	ld	s0,16(sp)
    80004ef8:	00813483          	ld	s1,8(sp)
    80004efc:	02010113          	addi	sp,sp,32
    80004f00:	00008067          	ret

0000000080004f04 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004f04:	fd010113          	addi	sp,sp,-48
    80004f08:	02113423          	sd	ra,40(sp)
    80004f0c:	02813023          	sd	s0,32(sp)
    80004f10:	00913c23          	sd	s1,24(sp)
    80004f14:	01213823          	sd	s2,16(sp)
    80004f18:	01313423          	sd	s3,8(sp)
    80004f1c:	01413023          	sd	s4,0(sp)
    80004f20:	03010413          	addi	s0,sp,48
    80004f24:	00050993          	mv	s3,a0
    80004f28:	00058a13          	mv	s4,a1
    LOCK();
    80004f2c:	00100613          	li	a2,1
    80004f30:	00000593          	li	a1,0
    80004f34:	00007517          	auipc	a0,0x7
    80004f38:	e3c50513          	addi	a0,a0,-452 # 8000bd70 <lockPrint>
    80004f3c:	ffffc097          	auipc	ra,0xffffc
    80004f40:	1e8080e7          	jalr	488(ra) # 80001124 <copy_and_swap>
    80004f44:	00050863          	beqz	a0,80004f54 <_Z9getStringPci+0x50>
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	35c080e7          	jalr	860(ra) # 800012a4 <_Z15thread_dispatchv>
    80004f50:	fddff06f          	j	80004f2c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004f54:	00000913          	li	s2,0
    80004f58:	00090493          	mv	s1,s2
    80004f5c:	0019091b          	addiw	s2,s2,1
    80004f60:	03495a63          	bge	s2,s4,80004f94 <_Z9getStringPci+0x90>
        cc = getc();
    80004f64:	ffffc097          	auipc	ra,0xffffc
    80004f68:	580080e7          	jalr	1408(ra) # 800014e4 <_Z4getcv>
        if(cc < 1)
    80004f6c:	02050463          	beqz	a0,80004f94 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004f70:	009984b3          	add	s1,s3,s1
    80004f74:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004f78:	00a00793          	li	a5,10
    80004f7c:	00f50a63          	beq	a0,a5,80004f90 <_Z9getStringPci+0x8c>
    80004f80:	00d00793          	li	a5,13
    80004f84:	fcf51ae3          	bne	a0,a5,80004f58 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004f88:	00090493          	mv	s1,s2
    80004f8c:	0080006f          	j	80004f94 <_Z9getStringPci+0x90>
    80004f90:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004f94:	009984b3          	add	s1,s3,s1
    80004f98:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004f9c:	00000613          	li	a2,0
    80004fa0:	00100593          	li	a1,1
    80004fa4:	00007517          	auipc	a0,0x7
    80004fa8:	dcc50513          	addi	a0,a0,-564 # 8000bd70 <lockPrint>
    80004fac:	ffffc097          	auipc	ra,0xffffc
    80004fb0:	178080e7          	jalr	376(ra) # 80001124 <copy_and_swap>
    80004fb4:	fe0514e3          	bnez	a0,80004f9c <_Z9getStringPci+0x98>
    return buf;
}
    80004fb8:	00098513          	mv	a0,s3
    80004fbc:	02813083          	ld	ra,40(sp)
    80004fc0:	02013403          	ld	s0,32(sp)
    80004fc4:	01813483          	ld	s1,24(sp)
    80004fc8:	01013903          	ld	s2,16(sp)
    80004fcc:	00813983          	ld	s3,8(sp)
    80004fd0:	00013a03          	ld	s4,0(sp)
    80004fd4:	03010113          	addi	sp,sp,48
    80004fd8:	00008067          	ret

0000000080004fdc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004fdc:	ff010113          	addi	sp,sp,-16
    80004fe0:	00813423          	sd	s0,8(sp)
    80004fe4:	01010413          	addi	s0,sp,16
    80004fe8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004fec:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004ff0:	0006c603          	lbu	a2,0(a3)
    80004ff4:	fd06071b          	addiw	a4,a2,-48
    80004ff8:	0ff77713          	andi	a4,a4,255
    80004ffc:	00900793          	li	a5,9
    80005000:	02e7e063          	bltu	a5,a4,80005020 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005004:	0025179b          	slliw	a5,a0,0x2
    80005008:	00a787bb          	addw	a5,a5,a0
    8000500c:	0017979b          	slliw	a5,a5,0x1
    80005010:	00168693          	addi	a3,a3,1
    80005014:	00c787bb          	addw	a5,a5,a2
    80005018:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000501c:	fd5ff06f          	j	80004ff0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005020:	00813403          	ld	s0,8(sp)
    80005024:	01010113          	addi	sp,sp,16
    80005028:	00008067          	ret

000000008000502c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000502c:	fc010113          	addi	sp,sp,-64
    80005030:	02113c23          	sd	ra,56(sp)
    80005034:	02813823          	sd	s0,48(sp)
    80005038:	02913423          	sd	s1,40(sp)
    8000503c:	03213023          	sd	s2,32(sp)
    80005040:	01313c23          	sd	s3,24(sp)
    80005044:	04010413          	addi	s0,sp,64
    80005048:	00050493          	mv	s1,a0
    8000504c:	00058913          	mv	s2,a1
    80005050:	00060993          	mv	s3,a2
    LOCK();
    80005054:	00100613          	li	a2,1
    80005058:	00000593          	li	a1,0
    8000505c:	00007517          	auipc	a0,0x7
    80005060:	d1450513          	addi	a0,a0,-748 # 8000bd70 <lockPrint>
    80005064:	ffffc097          	auipc	ra,0xffffc
    80005068:	0c0080e7          	jalr	192(ra) # 80001124 <copy_and_swap>
    8000506c:	00050863          	beqz	a0,8000507c <_Z8printIntiii+0x50>
    80005070:	ffffc097          	auipc	ra,0xffffc
    80005074:	234080e7          	jalr	564(ra) # 800012a4 <_Z15thread_dispatchv>
    80005078:	fddff06f          	j	80005054 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000507c:	00098463          	beqz	s3,80005084 <_Z8printIntiii+0x58>
    80005080:	0804c463          	bltz	s1,80005108 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005084:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005088:	00000593          	li	a1,0
    }

    i = 0;
    8000508c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005090:	0009079b          	sext.w	a5,s2
    80005094:	0325773b          	remuw	a4,a0,s2
    80005098:	00048613          	mv	a2,s1
    8000509c:	0014849b          	addiw	s1,s1,1
    800050a0:	02071693          	slli	a3,a4,0x20
    800050a4:	0206d693          	srli	a3,a3,0x20
    800050a8:	00007717          	auipc	a4,0x7
    800050ac:	ad070713          	addi	a4,a4,-1328 # 8000bb78 <digits>
    800050b0:	00d70733          	add	a4,a4,a3
    800050b4:	00074683          	lbu	a3,0(a4)
    800050b8:	fd040713          	addi	a4,s0,-48
    800050bc:	00c70733          	add	a4,a4,a2
    800050c0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800050c4:	0005071b          	sext.w	a4,a0
    800050c8:	0325553b          	divuw	a0,a0,s2
    800050cc:	fcf772e3          	bgeu	a4,a5,80005090 <_Z8printIntiii+0x64>
    if(neg)
    800050d0:	00058c63          	beqz	a1,800050e8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800050d4:	fd040793          	addi	a5,s0,-48
    800050d8:	009784b3          	add	s1,a5,s1
    800050dc:	02d00793          	li	a5,45
    800050e0:	fef48823          	sb	a5,-16(s1)
    800050e4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800050e8:	fff4849b          	addiw	s1,s1,-1
    800050ec:	0204c463          	bltz	s1,80005114 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800050f0:	fd040793          	addi	a5,s0,-48
    800050f4:	009787b3          	add	a5,a5,s1
    800050f8:	ff07c503          	lbu	a0,-16(a5)
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	420080e7          	jalr	1056(ra) # 8000151c <_Z4putcc>
    80005104:	fe5ff06f          	j	800050e8 <_Z8printIntiii+0xbc>
        x = -xx;
    80005108:	4090053b          	negw	a0,s1
        neg = 1;
    8000510c:	00100593          	li	a1,1
        x = -xx;
    80005110:	f7dff06f          	j	8000508c <_Z8printIntiii+0x60>

    UNLOCK();
    80005114:	00000613          	li	a2,0
    80005118:	00100593          	li	a1,1
    8000511c:	00007517          	auipc	a0,0x7
    80005120:	c5450513          	addi	a0,a0,-940 # 8000bd70 <lockPrint>
    80005124:	ffffc097          	auipc	ra,0xffffc
    80005128:	000080e7          	jalr	ra # 80001124 <copy_and_swap>
    8000512c:	fe0514e3          	bnez	a0,80005114 <_Z8printIntiii+0xe8>
    80005130:	03813083          	ld	ra,56(sp)
    80005134:	03013403          	ld	s0,48(sp)
    80005138:	02813483          	ld	s1,40(sp)
    8000513c:	02013903          	ld	s2,32(sp)
    80005140:	01813983          	ld	s3,24(sp)
    80005144:	04010113          	addi	sp,sp,64
    80005148:	00008067          	ret

000000008000514c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000514c:	fd010113          	addi	sp,sp,-48
    80005150:	02113423          	sd	ra,40(sp)
    80005154:	02813023          	sd	s0,32(sp)
    80005158:	00913c23          	sd	s1,24(sp)
    8000515c:	01213823          	sd	s2,16(sp)
    80005160:	01313423          	sd	s3,8(sp)
    80005164:	03010413          	addi	s0,sp,48
    80005168:	00050493          	mv	s1,a0
    8000516c:	00058913          	mv	s2,a1
    80005170:	0015879b          	addiw	a5,a1,1
    80005174:	0007851b          	sext.w	a0,a5
    80005178:	00f4a023          	sw	a5,0(s1)
    8000517c:	0004a823          	sw	zero,16(s1)
    80005180:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005184:	00251513          	slli	a0,a0,0x2
    80005188:	ffffc097          	auipc	ra,0xffffc
    8000518c:	018080e7          	jalr	24(ra) # 800011a0 <_Z9mem_allocm>
    80005190:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005194:	01000513          	li	a0,16
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	9a4080e7          	jalr	-1628(ra) # 80001b3c <_Znwm>
    800051a0:	00050993          	mv	s3,a0
    800051a4:	00000593          	li	a1,0
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	d0c080e7          	jalr	-756(ra) # 80001eb4 <_ZN9SemaphoreC1Ej>
    800051b0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800051b4:	01000513          	li	a0,16
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	984080e7          	jalr	-1660(ra) # 80001b3c <_Znwm>
    800051c0:	00050993          	mv	s3,a0
    800051c4:	00090593          	mv	a1,s2
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	cec080e7          	jalr	-788(ra) # 80001eb4 <_ZN9SemaphoreC1Ej>
    800051d0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800051d4:	01000513          	li	a0,16
    800051d8:	ffffd097          	auipc	ra,0xffffd
    800051dc:	964080e7          	jalr	-1692(ra) # 80001b3c <_Znwm>
    800051e0:	00050913          	mv	s2,a0
    800051e4:	00100593          	li	a1,1
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	ccc080e7          	jalr	-820(ra) # 80001eb4 <_ZN9SemaphoreC1Ej>
    800051f0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800051f4:	01000513          	li	a0,16
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	944080e7          	jalr	-1724(ra) # 80001b3c <_Znwm>
    80005200:	00050913          	mv	s2,a0
    80005204:	00100593          	li	a1,1
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	cac080e7          	jalr	-852(ra) # 80001eb4 <_ZN9SemaphoreC1Ej>
    80005210:	0324b823          	sd	s2,48(s1)
}
    80005214:	02813083          	ld	ra,40(sp)
    80005218:	02013403          	ld	s0,32(sp)
    8000521c:	01813483          	ld	s1,24(sp)
    80005220:	01013903          	ld	s2,16(sp)
    80005224:	00813983          	ld	s3,8(sp)
    80005228:	03010113          	addi	sp,sp,48
    8000522c:	00008067          	ret
    80005230:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005234:	00098513          	mv	a0,s3
    80005238:	ffffd097          	auipc	ra,0xffffd
    8000523c:	954080e7          	jalr	-1708(ra) # 80001b8c <_ZdlPv>
    80005240:	00048513          	mv	a0,s1
    80005244:	00008097          	auipc	ra,0x8
    80005248:	c14080e7          	jalr	-1004(ra) # 8000ce58 <_Unwind_Resume>
    8000524c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005250:	00098513          	mv	a0,s3
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	938080e7          	jalr	-1736(ra) # 80001b8c <_ZdlPv>
    8000525c:	00048513          	mv	a0,s1
    80005260:	00008097          	auipc	ra,0x8
    80005264:	bf8080e7          	jalr	-1032(ra) # 8000ce58 <_Unwind_Resume>
    80005268:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000526c:	00090513          	mv	a0,s2
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	91c080e7          	jalr	-1764(ra) # 80001b8c <_ZdlPv>
    80005278:	00048513          	mv	a0,s1
    8000527c:	00008097          	auipc	ra,0x8
    80005280:	bdc080e7          	jalr	-1060(ra) # 8000ce58 <_Unwind_Resume>
    80005284:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005288:	00090513          	mv	a0,s2
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	900080e7          	jalr	-1792(ra) # 80001b8c <_ZdlPv>
    80005294:	00048513          	mv	a0,s1
    80005298:	00008097          	auipc	ra,0x8
    8000529c:	bc0080e7          	jalr	-1088(ra) # 8000ce58 <_Unwind_Resume>

00000000800052a0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800052a0:	fe010113          	addi	sp,sp,-32
    800052a4:	00113c23          	sd	ra,24(sp)
    800052a8:	00813823          	sd	s0,16(sp)
    800052ac:	00913423          	sd	s1,8(sp)
    800052b0:	01213023          	sd	s2,0(sp)
    800052b4:	02010413          	addi	s0,sp,32
    800052b8:	00050493          	mv	s1,a0
    800052bc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800052c0:	01853503          	ld	a0,24(a0)
    800052c4:	ffffd097          	auipc	ra,0xffffd
    800052c8:	c28080e7          	jalr	-984(ra) # 80001eec <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800052cc:	0304b503          	ld	a0,48(s1)
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	c1c080e7          	jalr	-996(ra) # 80001eec <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800052d8:	0084b783          	ld	a5,8(s1)
    800052dc:	0144a703          	lw	a4,20(s1)
    800052e0:	00271713          	slli	a4,a4,0x2
    800052e4:	00e787b3          	add	a5,a5,a4
    800052e8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800052ec:	0144a783          	lw	a5,20(s1)
    800052f0:	0017879b          	addiw	a5,a5,1
    800052f4:	0004a703          	lw	a4,0(s1)
    800052f8:	02e7e7bb          	remw	a5,a5,a4
    800052fc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005300:	0304b503          	ld	a0,48(s1)
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	c14080e7          	jalr	-1004(ra) # 80001f18 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000530c:	0204b503          	ld	a0,32(s1)
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	c08080e7          	jalr	-1016(ra) # 80001f18 <_ZN9Semaphore6signalEv>

}
    80005318:	01813083          	ld	ra,24(sp)
    8000531c:	01013403          	ld	s0,16(sp)
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	00013903          	ld	s2,0(sp)
    80005328:	02010113          	addi	sp,sp,32
    8000532c:	00008067          	ret

0000000080005330 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005330:	fe010113          	addi	sp,sp,-32
    80005334:	00113c23          	sd	ra,24(sp)
    80005338:	00813823          	sd	s0,16(sp)
    8000533c:	00913423          	sd	s1,8(sp)
    80005340:	01213023          	sd	s2,0(sp)
    80005344:	02010413          	addi	s0,sp,32
    80005348:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000534c:	02053503          	ld	a0,32(a0)
    80005350:	ffffd097          	auipc	ra,0xffffd
    80005354:	b9c080e7          	jalr	-1124(ra) # 80001eec <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005358:	0284b503          	ld	a0,40(s1)
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	b90080e7          	jalr	-1136(ra) # 80001eec <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005364:	0084b703          	ld	a4,8(s1)
    80005368:	0104a783          	lw	a5,16(s1)
    8000536c:	00279693          	slli	a3,a5,0x2
    80005370:	00d70733          	add	a4,a4,a3
    80005374:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005378:	0017879b          	addiw	a5,a5,1
    8000537c:	0004a703          	lw	a4,0(s1)
    80005380:	02e7e7bb          	remw	a5,a5,a4
    80005384:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005388:	0284b503          	ld	a0,40(s1)
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	b8c080e7          	jalr	-1140(ra) # 80001f18 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005394:	0184b503          	ld	a0,24(s1)
    80005398:	ffffd097          	auipc	ra,0xffffd
    8000539c:	b80080e7          	jalr	-1152(ra) # 80001f18 <_ZN9Semaphore6signalEv>

    return ret;
}
    800053a0:	00090513          	mv	a0,s2
    800053a4:	01813083          	ld	ra,24(sp)
    800053a8:	01013403          	ld	s0,16(sp)
    800053ac:	00813483          	ld	s1,8(sp)
    800053b0:	00013903          	ld	s2,0(sp)
    800053b4:	02010113          	addi	sp,sp,32
    800053b8:	00008067          	ret

00000000800053bc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800053bc:	fe010113          	addi	sp,sp,-32
    800053c0:	00113c23          	sd	ra,24(sp)
    800053c4:	00813823          	sd	s0,16(sp)
    800053c8:	00913423          	sd	s1,8(sp)
    800053cc:	01213023          	sd	s2,0(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800053d8:	02853503          	ld	a0,40(a0)
    800053dc:	ffffd097          	auipc	ra,0xffffd
    800053e0:	b10080e7          	jalr	-1264(ra) # 80001eec <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800053e4:	0304b503          	ld	a0,48(s1)
    800053e8:	ffffd097          	auipc	ra,0xffffd
    800053ec:	b04080e7          	jalr	-1276(ra) # 80001eec <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800053f0:	0144a783          	lw	a5,20(s1)
    800053f4:	0104a903          	lw	s2,16(s1)
    800053f8:	0327ce63          	blt	a5,s2,80005434 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800053fc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005400:	0304b503          	ld	a0,48(s1)
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	b14080e7          	jalr	-1260(ra) # 80001f18 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000540c:	0284b503          	ld	a0,40(s1)
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	b08080e7          	jalr	-1272(ra) # 80001f18 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005418:	00090513          	mv	a0,s2
    8000541c:	01813083          	ld	ra,24(sp)
    80005420:	01013403          	ld	s0,16(sp)
    80005424:	00813483          	ld	s1,8(sp)
    80005428:	00013903          	ld	s2,0(sp)
    8000542c:	02010113          	addi	sp,sp,32
    80005430:	00008067          	ret
        ret = cap - head + tail;
    80005434:	0004a703          	lw	a4,0(s1)
    80005438:	4127093b          	subw	s2,a4,s2
    8000543c:	00f9093b          	addw	s2,s2,a5
    80005440:	fc1ff06f          	j	80005400 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005444 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005444:	fe010113          	addi	sp,sp,-32
    80005448:	00113c23          	sd	ra,24(sp)
    8000544c:	00813823          	sd	s0,16(sp)
    80005450:	00913423          	sd	s1,8(sp)
    80005454:	02010413          	addi	s0,sp,32
    80005458:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000545c:	00a00513          	li	a0,10
    80005460:	ffffd097          	auipc	ra,0xffffd
    80005464:	b64080e7          	jalr	-1180(ra) # 80001fc4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005468:	00004517          	auipc	a0,0x4
    8000546c:	f2850513          	addi	a0,a0,-216 # 80009390 <CONSOLE_STATUS+0x380>
    80005470:	00000097          	auipc	ra,0x0
    80005474:	a0c080e7          	jalr	-1524(ra) # 80004e7c <_Z11printStringPKc>
    while (getCnt()) {
    80005478:	00048513          	mv	a0,s1
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	f40080e7          	jalr	-192(ra) # 800053bc <_ZN9BufferCPP6getCntEv>
    80005484:	02050c63          	beqz	a0,800054bc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005488:	0084b783          	ld	a5,8(s1)
    8000548c:	0104a703          	lw	a4,16(s1)
    80005490:	00271713          	slli	a4,a4,0x2
    80005494:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005498:	0007c503          	lbu	a0,0(a5)
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	b28080e7          	jalr	-1240(ra) # 80001fc4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800054a4:	0104a783          	lw	a5,16(s1)
    800054a8:	0017879b          	addiw	a5,a5,1
    800054ac:	0004a703          	lw	a4,0(s1)
    800054b0:	02e7e7bb          	remw	a5,a5,a4
    800054b4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800054b8:	fc1ff06f          	j	80005478 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800054bc:	02100513          	li	a0,33
    800054c0:	ffffd097          	auipc	ra,0xffffd
    800054c4:	b04080e7          	jalr	-1276(ra) # 80001fc4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800054c8:	00a00513          	li	a0,10
    800054cc:	ffffd097          	auipc	ra,0xffffd
    800054d0:	af8080e7          	jalr	-1288(ra) # 80001fc4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800054d4:	0084b503          	ld	a0,8(s1)
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	d14080e7          	jalr	-748(ra) # 800011ec <_Z8mem_freePv>
    delete itemAvailable;
    800054e0:	0204b503          	ld	a0,32(s1)
    800054e4:	00050863          	beqz	a0,800054f4 <_ZN9BufferCPPD1Ev+0xb0>
    800054e8:	00053783          	ld	a5,0(a0)
    800054ec:	0087b783          	ld	a5,8(a5)
    800054f0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800054f4:	0184b503          	ld	a0,24(s1)
    800054f8:	00050863          	beqz	a0,80005508 <_ZN9BufferCPPD1Ev+0xc4>
    800054fc:	00053783          	ld	a5,0(a0)
    80005500:	0087b783          	ld	a5,8(a5)
    80005504:	000780e7          	jalr	a5
    delete mutexTail;
    80005508:	0304b503          	ld	a0,48(s1)
    8000550c:	00050863          	beqz	a0,8000551c <_ZN9BufferCPPD1Ev+0xd8>
    80005510:	00053783          	ld	a5,0(a0)
    80005514:	0087b783          	ld	a5,8(a5)
    80005518:	000780e7          	jalr	a5
    delete mutexHead;
    8000551c:	0284b503          	ld	a0,40(s1)
    80005520:	00050863          	beqz	a0,80005530 <_ZN9BufferCPPD1Ev+0xec>
    80005524:	00053783          	ld	a5,0(a0)
    80005528:	0087b783          	ld	a5,8(a5)
    8000552c:	000780e7          	jalr	a5
}
    80005530:	01813083          	ld	ra,24(sp)
    80005534:	01013403          	ld	s0,16(sp)
    80005538:	00813483          	ld	s1,8(sp)
    8000553c:	02010113          	addi	sp,sp,32
    80005540:	00008067          	ret

0000000080005544 <_Z8userMainv>:
#include "testGetId.h"
#include "../tests/testBarrier.hpp"

#endif

void userMain() {
    80005544:	fe010113          	addi	sp,sp,-32
    80005548:	00113c23          	sd	ra,24(sp)
    8000554c:	00813823          	sd	s0,16(sp)
    80005550:	00913423          	sd	s1,8(sp)
    80005554:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-9]\n");
    80005558:	00004517          	auipc	a0,0x4
    8000555c:	e5050513          	addi	a0,a0,-432 # 800093a8 <CONSOLE_STATUS+0x398>
    80005560:	00000097          	auipc	ra,0x0
    80005564:	91c080e7          	jalr	-1764(ra) # 80004e7c <_Z11printStringPKc>
    int test = getc() - '0';
    80005568:	ffffc097          	auipc	ra,0xffffc
    8000556c:	f7c080e7          	jalr	-132(ra) # 800014e4 <_Z4getcv>
    80005570:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005574:	ffffc097          	auipc	ra,0xffffc
    80005578:	f70080e7          	jalr	-144(ra) # 800014e4 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000557c:	00900793          	li	a5,9
    80005580:	1497ee63          	bltu	a5,s1,800056dc <_Z8userMainv+0x198>
    80005584:	00249493          	slli	s1,s1,0x2
    80005588:	00004717          	auipc	a4,0x4
    8000558c:	14870713          	addi	a4,a4,328 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80005590:	00e484b3          	add	s1,s1,a4
    80005594:	0004a783          	lw	a5,0(s1)
    80005598:	00e787b3          	add	a5,a5,a4
    8000559c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	f54080e7          	jalr	-172(ra) # 800044f4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800055a8:	00004517          	auipc	a0,0x4
    800055ac:	e2050513          	addi	a0,a0,-480 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800055b0:	00000097          	auipc	ra,0x0
    800055b4:	8cc080e7          	jalr	-1844(ra) # 80004e7c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800055b8:	01813083          	ld	ra,24(sp)
    800055bc:	01013403          	ld	s0,16(sp)
    800055c0:	00813483          	ld	s1,8(sp)
    800055c4:	02010113          	addi	sp,sp,32
    800055c8:	00008067          	ret
            Threads_CPP_API_test();
    800055cc:	ffffe097          	auipc	ra,0xffffe
    800055d0:	e08080e7          	jalr	-504(ra) # 800033d4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800055d4:	00004517          	auipc	a0,0x4
    800055d8:	e3450513          	addi	a0,a0,-460 # 80009408 <CONSOLE_STATUS+0x3f8>
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	8a0080e7          	jalr	-1888(ra) # 80004e7c <_Z11printStringPKc>
            break;
    800055e4:	fd5ff06f          	j	800055b8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800055e8:	ffffd097          	auipc	ra,0xffffd
    800055ec:	640080e7          	jalr	1600(ra) # 80002c28 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800055f0:	00004517          	auipc	a0,0x4
    800055f4:	e5850513          	addi	a0,a0,-424 # 80009448 <CONSOLE_STATUS+0x438>
    800055f8:	00000097          	auipc	ra,0x0
    800055fc:	884080e7          	jalr	-1916(ra) # 80004e7c <_Z11printStringPKc>
            break;
    80005600:	fb9ff06f          	j	800055b8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005604:	fffff097          	auipc	ra,0xfffff
    80005608:	234080e7          	jalr	564(ra) # 80004838 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	e8c50513          	addi	a0,a0,-372 # 80009498 <CONSOLE_STATUS+0x488>
    80005614:	00000097          	auipc	ra,0x0
    80005618:	868080e7          	jalr	-1944(ra) # 80004e7c <_Z11printStringPKc>
            break;
    8000561c:	f9dff06f          	j	800055b8 <_Z8userMainv+0x74>
            testSleeping();
    80005620:	00000097          	auipc	ra,0x0
    80005624:	174080e7          	jalr	372(ra) # 80005794 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005628:	00004517          	auipc	a0,0x4
    8000562c:	ec850513          	addi	a0,a0,-312 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005630:	00000097          	auipc	ra,0x0
    80005634:	84c080e7          	jalr	-1972(ra) # 80004e7c <_Z11printStringPKc>
            break;
    80005638:	f81ff06f          	j	800055b8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000563c:	ffffe097          	auipc	ra,0xffffe
    80005640:	258080e7          	jalr	600(ra) # 80003894 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005644:	00004517          	auipc	a0,0x4
    80005648:	edc50513          	addi	a0,a0,-292 # 80009520 <CONSOLE_STATUS+0x510>
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	830080e7          	jalr	-2000(ra) # 80004e7c <_Z11printStringPKc>
            break;
    80005654:	f65ff06f          	j	800055b8 <_Z8userMainv+0x74>
            System_Mode_test();
    80005658:	00001097          	auipc	ra,0x1
    8000565c:	bc0080e7          	jalr	-1088(ra) # 80006218 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005660:	00004517          	auipc	a0,0x4
    80005664:	f0050513          	addi	a0,a0,-256 # 80009560 <CONSOLE_STATUS+0x550>
    80005668:	00000097          	auipc	ra,0x0
    8000566c:	814080e7          	jalr	-2028(ra) # 80004e7c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005670:	00004517          	auipc	a0,0x4
    80005674:	f1050513          	addi	a0,a0,-240 # 80009580 <CONSOLE_STATUS+0x570>
    80005678:	00000097          	auipc	ra,0x0
    8000567c:	804080e7          	jalr	-2044(ra) # 80004e7c <_Z11printStringPKc>
            break;
    80005680:	f39ff06f          	j	800055b8 <_Z8userMainv+0x74>
            testGetId();
    80005684:	00000097          	auipc	ra,0x0
    80005688:	198080e7          	jalr	408(ra) # 8000581c <_Z9testGetIdv>
            printString("Test se uspesno zavrsio\n");
    8000568c:	00004517          	auipc	a0,0x4
    80005690:	f4c50513          	addi	a0,a0,-180 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005694:	fffff097          	auipc	ra,0xfffff
    80005698:	7e8080e7          	jalr	2024(ra) # 80004e7c <_Z11printStringPKc>
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000569c:	00004517          	auipc	a0,0x4
    800056a0:	f5c50513          	addi	a0,a0,-164 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800056a4:	fffff097          	auipc	ra,0xfffff
    800056a8:	7d8080e7          	jalr	2008(ra) # 80004e7c <_Z11printStringPKc>
            break;
    800056ac:	f0dff06f          	j	800055b8 <_Z8userMainv+0x74>
            testBarrier();
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	f84080e7          	jalr	-124(ra) # 80006634 <_Z11testBarrierv>
            printString("Test se uspesno zavrsio\n");
    800056b8:	00004517          	auipc	a0,0x4
    800056bc:	f2050513          	addi	a0,a0,-224 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800056c0:	fffff097          	auipc	ra,0xfffff
    800056c4:	7bc080e7          	jalr	1980(ra) # 80004e7c <_Z11printStringPKc>
            printString("TEST 9 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800056c8:	00004517          	auipc	a0,0x4
    800056cc:	f8850513          	addi	a0,a0,-120 # 80009650 <CONSOLE_STATUS+0x640>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	7ac080e7          	jalr	1964(ra) # 80004e7c <_Z11printStringPKc>
            break;
    800056d8:	ee1ff06f          	j	800055b8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800056dc:	00004517          	auipc	a0,0x4
    800056e0:	fcc50513          	addi	a0,a0,-52 # 800096a8 <CONSOLE_STATUS+0x698>
    800056e4:	fffff097          	auipc	ra,0xfffff
    800056e8:	798080e7          	jalr	1944(ra) # 80004e7c <_Z11printStringPKc>
    800056ec:	ecdff06f          	j	800055b8 <_Z8userMainv+0x74>

00000000800056f0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800056f0:	fe010113          	addi	sp,sp,-32
    800056f4:	00113c23          	sd	ra,24(sp)
    800056f8:	00813823          	sd	s0,16(sp)
    800056fc:	00913423          	sd	s1,8(sp)
    80005700:	01213023          	sd	s2,0(sp)
    80005704:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005708:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000570c:	00600493          	li	s1,6
    while (--i > 0) {
    80005710:	fff4849b          	addiw	s1,s1,-1
    80005714:	04905463          	blez	s1,8000575c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005718:	00004517          	auipc	a0,0x4
    8000571c:	fe050513          	addi	a0,a0,-32 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	75c080e7          	jalr	1884(ra) # 80004e7c <_Z11printStringPKc>
        printInt(sleep_time);
    80005728:	00000613          	li	a2,0
    8000572c:	00a00593          	li	a1,10
    80005730:	0009051b          	sext.w	a0,s2
    80005734:	00000097          	auipc	ra,0x0
    80005738:	8f8080e7          	jalr	-1800(ra) # 8000502c <_Z8printIntiii>
        printString(" !\n");
    8000573c:	00004517          	auipc	a0,0x4
    80005740:	fc450513          	addi	a0,a0,-60 # 80009700 <CONSOLE_STATUS+0x6f0>
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	738080e7          	jalr	1848(ra) # 80004e7c <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000574c:	00090513          	mv	a0,s2
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	d78080e7          	jalr	-648(ra) # 800014c8 <_Z10time_sleepm>
    while (--i > 0) {
    80005758:	fb9ff06f          	j	80005710 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000575c:	00a00793          	li	a5,10
    80005760:	02f95933          	divu	s2,s2,a5
    80005764:	fff90913          	addi	s2,s2,-1
    80005768:	00006797          	auipc	a5,0x6
    8000576c:	61078793          	addi	a5,a5,1552 # 8000bd78 <_ZL8finished>
    80005770:	01278933          	add	s2,a5,s2
    80005774:	00100793          	li	a5,1
    80005778:	00f90023          	sb	a5,0(s2)
}
    8000577c:	01813083          	ld	ra,24(sp)
    80005780:	01013403          	ld	s0,16(sp)
    80005784:	00813483          	ld	s1,8(sp)
    80005788:	00013903          	ld	s2,0(sp)
    8000578c:	02010113          	addi	sp,sp,32
    80005790:	00008067          	ret

0000000080005794 <_Z12testSleepingv>:

void testSleeping() {
    80005794:	fc010113          	addi	sp,sp,-64
    80005798:	02113c23          	sd	ra,56(sp)
    8000579c:	02813823          	sd	s0,48(sp)
    800057a0:	02913423          	sd	s1,40(sp)
    800057a4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800057a8:	00a00793          	li	a5,10
    800057ac:	fcf43823          	sd	a5,-48(s0)
    800057b0:	01400793          	li	a5,20
    800057b4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800057b8:	00000493          	li	s1,0
    800057bc:	02c0006f          	j	800057e8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800057c0:	00349793          	slli	a5,s1,0x3
    800057c4:	fd040613          	addi	a2,s0,-48
    800057c8:	00f60633          	add	a2,a2,a5
    800057cc:	00000597          	auipc	a1,0x0
    800057d0:	f2458593          	addi	a1,a1,-220 # 800056f0 <_ZL9sleepyRunPv>
    800057d4:	fc040513          	addi	a0,s0,-64
    800057d8:	00f50533          	add	a0,a0,a5
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	a4c080e7          	jalr	-1460(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800057e4:	0014849b          	addiw	s1,s1,1
    800057e8:	00100793          	li	a5,1
    800057ec:	fc97dae3          	bge	a5,s1,800057c0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800057f0:	00006797          	auipc	a5,0x6
    800057f4:	5887c783          	lbu	a5,1416(a5) # 8000bd78 <_ZL8finished>
    800057f8:	fe078ce3          	beqz	a5,800057f0 <_Z12testSleepingv+0x5c>
    800057fc:	00006797          	auipc	a5,0x6
    80005800:	57d7c783          	lbu	a5,1405(a5) # 8000bd79 <_ZL8finished+0x1>
    80005804:	fe0786e3          	beqz	a5,800057f0 <_Z12testSleepingv+0x5c>
}
    80005808:	03813083          	ld	ra,56(sp)
    8000580c:	03013403          	ld	s0,48(sp)
    80005810:	02813483          	ld	s1,40(sp)
    80005814:	04010113          	addi	sp,sp,64
    80005818:	00008067          	ret

000000008000581c <_Z9testGetIdv>:
        }
    }
};

void testGetId()
{
    8000581c:	fd010113          	addi	sp,sp,-48
    80005820:	02113423          	sd	ra,40(sp)
    80005824:	02813023          	sd	s0,32(sp)
    80005828:	00913c23          	sd	s1,24(sp)
    8000582c:	01213823          	sd	s2,16(sp)
    80005830:	01313423          	sd	s3,8(sp)
    80005834:	03010413          	addi	s0,sp,48

    Thread *threads[5];

    threads[0] = new WorkerAMod();
    80005838:	02000513          	li	a0,32
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	300080e7          	jalr	768(ra) # 80001b3c <_Znwm>
    80005844:	00050993          	mv	s3,a0
    WorkerAMod():Thread() {}
    80005848:	ffffc097          	auipc	ra,0xffffc
    8000584c:	544080e7          	jalr	1348(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80005850:	00006797          	auipc	a5,0x6
    80005854:	35078793          	addi	a5,a5,848 # 8000bba0 <_ZTV10WorkerAMod+0x10>
    80005858:	00f9b023          	sd	a5,0(s3)
    printString("ThreadA created!\n");
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	edc50513          	addi	a0,a0,-292 # 80009738 <CONSOLE_STATUS+0x728>
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	618080e7          	jalr	1560(ra) # 80004e7c <_Z11printStringPKc>

    threads[1] = new WorkerBMod();
    8000586c:	02000513          	li	a0,32
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	2cc080e7          	jalr	716(ra) # 80001b3c <_Znwm>
    80005878:	00050913          	mv	s2,a0
    WorkerBMod(): Thread() {}
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	510080e7          	jalr	1296(ra) # 80001d8c <_ZN6ThreadC1Ev>
    80005884:	00006797          	auipc	a5,0x6
    80005888:	34478793          	addi	a5,a5,836 # 8000bbc8 <_ZTV10WorkerBMod+0x10>
    8000588c:	00f93023          	sd	a5,0(s2)
    printString("ThreadB created!\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	ec050513          	addi	a0,a0,-320 # 80009750 <CONSOLE_STATUS+0x740>
    80005898:	fffff097          	auipc	ra,0xfffff
    8000589c:	5e4080e7          	jalr	1508(ra) # 80004e7c <_Z11printStringPKc>

    threads[2] = new WorkerCMod();
    800058a0:	02000513          	li	a0,32
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	298080e7          	jalr	664(ra) # 80001b3c <_Znwm>
    800058ac:	00050493          	mv	s1,a0
    WorkerCMod():Thread() {}
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	4dc080e7          	jalr	1244(ra) # 80001d8c <_ZN6ThreadC1Ev>
    800058b8:	00006797          	auipc	a5,0x6
    800058bc:	33878793          	addi	a5,a5,824 # 8000bbf0 <_ZTV10WorkerCMod+0x10>
    800058c0:	00f4b023          	sd	a5,0(s1)
    printString("ThreadC created!\n");
    800058c4:	00004517          	auipc	a0,0x4
    800058c8:	ea450513          	addi	a0,a0,-348 # 80009768 <CONSOLE_STATUS+0x758>
    800058cc:	fffff097          	auipc	ra,0xfffff
    800058d0:	5b0080e7          	jalr	1456(ra) # 80004e7c <_Z11printStringPKc>

    threads[0]->start();
    800058d4:	00098513          	mv	a0,s3
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	508080e7          	jalr	1288(ra) # 80001de0 <_ZN6Thread5startEv>
    threads[1]->start();
    800058e0:	00090513          	mv	a0,s2
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	4fc080e7          	jalr	1276(ra) # 80001de0 <_ZN6Thread5startEv>
    threads[2]->start();
    800058ec:	00048513          	mv	a0,s1
    800058f0:	ffffc097          	auipc	ra,0xffffc
    800058f4:	4f0080e7          	jalr	1264(ra) # 80001de0 <_ZN6Thread5startEv>

    threads[0]->join();
    800058f8:	00098513          	mv	a0,s3
    800058fc:	ffffc097          	auipc	ra,0xffffc
    80005900:	53c080e7          	jalr	1340(ra) # 80001e38 <_ZN6Thread4joinEv>
    threads[1]->join();
    80005904:	00090513          	mv	a0,s2
    80005908:	ffffc097          	auipc	ra,0xffffc
    8000590c:	530080e7          	jalr	1328(ra) # 80001e38 <_ZN6Thread4joinEv>
    threads[2]->join();
    80005910:	00048513          	mv	a0,s1
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	524080e7          	jalr	1316(ra) # 80001e38 <_ZN6Thread4joinEv>
    8000591c:	02813083          	ld	ra,40(sp)
    80005920:	02013403          	ld	s0,32(sp)
    80005924:	01813483          	ld	s1,24(sp)
    80005928:	01013903          	ld	s2,16(sp)
    8000592c:	00813983          	ld	s3,8(sp)
    80005930:	03010113          	addi	sp,sp,48
    80005934:	00008067          	ret
    80005938:	00050493          	mv	s1,a0
    threads[0] = new WorkerAMod();
    8000593c:	00098513          	mv	a0,s3
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	24c080e7          	jalr	588(ra) # 80001b8c <_ZdlPv>
    80005948:	00048513          	mv	a0,s1
    8000594c:	00007097          	auipc	ra,0x7
    80005950:	50c080e7          	jalr	1292(ra) # 8000ce58 <_Unwind_Resume>
    80005954:	00050493          	mv	s1,a0
    threads[1] = new WorkerBMod();
    80005958:	00090513          	mv	a0,s2
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	230080e7          	jalr	560(ra) # 80001b8c <_ZdlPv>
    80005964:	00048513          	mv	a0,s1
    80005968:	00007097          	auipc	ra,0x7
    8000596c:	4f0080e7          	jalr	1264(ra) # 8000ce58 <_Unwind_Resume>
    80005970:	00050913          	mv	s2,a0
    threads[2] = new WorkerCMod();
    80005974:	00048513          	mv	a0,s1
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	214080e7          	jalr	532(ra) # 80001b8c <_ZdlPv>
    80005980:	00090513          	mv	a0,s2
    80005984:	00007097          	auipc	ra,0x7
    80005988:	4d4080e7          	jalr	1236(ra) # 8000ce58 <_Unwind_Resume>

000000008000598c <_ZN10WorkerAMod3runEv>:
    void run() override {
    8000598c:	fe010113          	addi	sp,sp,-32
    80005990:	00113c23          	sd	ra,24(sp)
    80005994:	00813823          	sd	s0,16(sp)
    80005998:	00913423          	sd	s1,8(sp)
    8000599c:	01213023          	sd	s2,0(sp)
    800059a0:	02010413          	addi	s0,sp,32
        for(uint64 i = 0; i < 10; i++) {
    800059a4:	00000493          	li	s1,0
    800059a8:	05c0006f          	j	80005a04 <_ZN10WorkerAMod3runEv+0x78>
            TCB::readyToPrintA = false;
    800059ac:	00006797          	auipc	a5,0x6
    800059b0:	2c47b783          	ld	a5,708(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x40>
    800059b4:	00078023          	sb	zero,0(a5)
            int idA = getThreadId();
    800059b8:	ffffc097          	auipc	ra,0xffffc
    800059bc:	958080e7          	jalr	-1704(ra) # 80001310 <_Z11getThreadIdv>
    800059c0:	00050913          	mv	s2,a0
            printString("A: MyID: ");
    800059c4:	00004517          	auipc	a0,0x4
    800059c8:	d4450513          	addi	a0,a0,-700 # 80009708 <CONSOLE_STATUS+0x6f8>
    800059cc:	fffff097          	auipc	ra,0xfffff
    800059d0:	4b0080e7          	jalr	1200(ra) # 80004e7c <_Z11printStringPKc>
            printInt(idA);
    800059d4:	00000613          	li	a2,0
    800059d8:	00a00593          	li	a1,10
    800059dc:	00090513          	mv	a0,s2
    800059e0:	fffff097          	auipc	ra,0xfffff
    800059e4:	64c080e7          	jalr	1612(ra) # 8000502c <_Z8printIntiii>
            printString("\n");
    800059e8:	00004517          	auipc	a0,0x4
    800059ec:	db050513          	addi	a0,a0,-592 # 80009798 <CONSOLE_STATUS+0x788>
    800059f0:	fffff097          	auipc	ra,0xfffff
    800059f4:	48c080e7          	jalr	1164(ra) # 80004e7c <_Z11printStringPKc>
            thread_dispatch();
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	8ac080e7          	jalr	-1876(ra) # 800012a4 <_Z15thread_dispatchv>
        for(uint64 i = 0; i < 10; i++) {
    80005a00:	00148493          	addi	s1,s1,1
    80005a04:	00900793          	li	a5,9
    80005a08:	0297e663          	bltu	a5,s1,80005a34 <_ZN10WorkerAMod3runEv+0xa8>
            while(!TCB::readyToPrintA) {
    80005a0c:	00006797          	auipc	a5,0x6
    80005a10:	2647b783          	ld	a5,612(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x40>
    80005a14:	0007c783          	lbu	a5,0(a5)
    80005a18:	fe078ae3          	beqz	a5,80005a0c <_ZN10WorkerAMod3runEv+0x80>
for(uint64 k = 0; k < 3000000; k++) {
    80005a1c:	00000793          	li	a5,0
    80005a20:	002dc737          	lui	a4,0x2dc
    80005a24:	6bf70713          	addi	a4,a4,1727 # 2dc6bf <_entry-0x7fd23941>
    80005a28:	f8f762e3          	bltu	a4,a5,800059ac <_ZN10WorkerAMod3runEv+0x20>
    80005a2c:	00178793          	addi	a5,a5,1
    80005a30:	ff1ff06f          	j	80005a20 <_ZN10WorkerAMod3runEv+0x94>
    }
    80005a34:	01813083          	ld	ra,24(sp)
    80005a38:	01013403          	ld	s0,16(sp)
    80005a3c:	00813483          	ld	s1,8(sp)
    80005a40:	00013903          	ld	s2,0(sp)
    80005a44:	02010113          	addi	sp,sp,32
    80005a48:	00008067          	ret

0000000080005a4c <_ZN10WorkerBMod3runEv>:
    void run() override {
    80005a4c:	fe010113          	addi	sp,sp,-32
    80005a50:	00113c23          	sd	ra,24(sp)
    80005a54:	00813823          	sd	s0,16(sp)
    80005a58:	00913423          	sd	s1,8(sp)
    80005a5c:	01213023          	sd	s2,0(sp)
    80005a60:	02010413          	addi	s0,sp,32
        for(uint64 i = 0; i< 10; i++) {
    80005a64:	00000493          	li	s1,0
    80005a68:	05c0006f          	j	80005ac4 <_ZN10WorkerBMod3runEv+0x78>
            TCB::readyToPrintB = false;
    80005a6c:	00006797          	auipc	a5,0x6
    80005a70:	1fc7b783          	ld	a5,508(a5) # 8000bc68 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005a74:	00078023          	sb	zero,0(a5)
            int idB = getThreadId();
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	898080e7          	jalr	-1896(ra) # 80001310 <_Z11getThreadIdv>
    80005a80:	00050913          	mv	s2,a0
            printString("B: MyID: ");
    80005a84:	00004517          	auipc	a0,0x4
    80005a88:	c9450513          	addi	a0,a0,-876 # 80009718 <CONSOLE_STATUS+0x708>
    80005a8c:	fffff097          	auipc	ra,0xfffff
    80005a90:	3f0080e7          	jalr	1008(ra) # 80004e7c <_Z11printStringPKc>
            printInt(idB);
    80005a94:	00000613          	li	a2,0
    80005a98:	00a00593          	li	a1,10
    80005a9c:	00090513          	mv	a0,s2
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	58c080e7          	jalr	1420(ra) # 8000502c <_Z8printIntiii>
            printString("\n");
    80005aa8:	00004517          	auipc	a0,0x4
    80005aac:	cf050513          	addi	a0,a0,-784 # 80009798 <CONSOLE_STATUS+0x788>
    80005ab0:	fffff097          	auipc	ra,0xfffff
    80005ab4:	3cc080e7          	jalr	972(ra) # 80004e7c <_Z11printStringPKc>
            thread_dispatch();
    80005ab8:	ffffb097          	auipc	ra,0xffffb
    80005abc:	7ec080e7          	jalr	2028(ra) # 800012a4 <_Z15thread_dispatchv>
        for(uint64 i = 0; i< 10; i++) {
    80005ac0:	00148493          	addi	s1,s1,1
    80005ac4:	00900793          	li	a5,9
    80005ac8:	0097ee63          	bltu	a5,s1,80005ae4 <_ZN10WorkerBMod3runEv+0x98>
            for(uint64 k = 0; k < 3000000; k++) {
    80005acc:	00000793          	li	a5,0
    80005ad0:	002dc737          	lui	a4,0x2dc
    80005ad4:	6bf70713          	addi	a4,a4,1727 # 2dc6bf <_entry-0x7fd23941>
    80005ad8:	f8f76ae3          	bltu	a4,a5,80005a6c <_ZN10WorkerBMod3runEv+0x20>
    80005adc:	00178793          	addi	a5,a5,1
    80005ae0:	ff1ff06f          	j	80005ad0 <_ZN10WorkerBMod3runEv+0x84>
    }
    80005ae4:	01813083          	ld	ra,24(sp)
    80005ae8:	01013403          	ld	s0,16(sp)
    80005aec:	00813483          	ld	s1,8(sp)
    80005af0:	00013903          	ld	s2,0(sp)
    80005af4:	02010113          	addi	sp,sp,32
    80005af8:	00008067          	ret

0000000080005afc <_ZN10WorkerCMod3runEv>:
    void run() override {
    80005afc:	fe010113          	addi	sp,sp,-32
    80005b00:	00113c23          	sd	ra,24(sp)
    80005b04:	00813823          	sd	s0,16(sp)
    80005b08:	00913423          	sd	s1,8(sp)
    80005b0c:	01213023          	sd	s2,0(sp)
    80005b10:	02010413          	addi	s0,sp,32
        for(uint64 i = 0; i < 10; i++) {
    80005b14:	00000493          	li	s1,0
    80005b18:	05c0006f          	j	80005b74 <_ZN10WorkerCMod3runEv+0x78>
            TCB::readyToPrintC = false;
    80005b1c:	00006797          	auipc	a5,0x6
    80005b20:	1347b783          	ld	a5,308(a5) # 8000bc50 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005b24:	00078023          	sb	zero,0(a5)
            int idC = getThreadId();
    80005b28:	ffffb097          	auipc	ra,0xffffb
    80005b2c:	7e8080e7          	jalr	2024(ra) # 80001310 <_Z11getThreadIdv>
    80005b30:	00050913          	mv	s2,a0
            printString("C: MyID: ");
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	bf450513          	addi	a0,a0,-1036 # 80009728 <CONSOLE_STATUS+0x718>
    80005b3c:	fffff097          	auipc	ra,0xfffff
    80005b40:	340080e7          	jalr	832(ra) # 80004e7c <_Z11printStringPKc>
            printInt(idC);
    80005b44:	00000613          	li	a2,0
    80005b48:	00a00593          	li	a1,10
    80005b4c:	00090513          	mv	a0,s2
    80005b50:	fffff097          	auipc	ra,0xfffff
    80005b54:	4dc080e7          	jalr	1244(ra) # 8000502c <_Z8printIntiii>
            printString("\n");
    80005b58:	00004517          	auipc	a0,0x4
    80005b5c:	c4050513          	addi	a0,a0,-960 # 80009798 <CONSOLE_STATUS+0x788>
    80005b60:	fffff097          	auipc	ra,0xfffff
    80005b64:	31c080e7          	jalr	796(ra) # 80004e7c <_Z11printStringPKc>
            thread_dispatch();
    80005b68:	ffffb097          	auipc	ra,0xffffb
    80005b6c:	73c080e7          	jalr	1852(ra) # 800012a4 <_Z15thread_dispatchv>
        for(uint64 i = 0; i < 10; i++) {
    80005b70:	00148493          	addi	s1,s1,1
    80005b74:	00900793          	li	a5,9
    80005b78:	0097ee63          	bltu	a5,s1,80005b94 <_ZN10WorkerCMod3runEv+0x98>
            for(uint64 k = 0; k < 3000000; k++) {
    80005b7c:	00000793          	li	a5,0
    80005b80:	002dc737          	lui	a4,0x2dc
    80005b84:	6bf70713          	addi	a4,a4,1727 # 2dc6bf <_entry-0x7fd23941>
    80005b88:	f8f76ae3          	bltu	a4,a5,80005b1c <_ZN10WorkerCMod3runEv+0x20>
    80005b8c:	00178793          	addi	a5,a5,1
    80005b90:	ff1ff06f          	j	80005b80 <_ZN10WorkerCMod3runEv+0x84>
    }
    80005b94:	01813083          	ld	ra,24(sp)
    80005b98:	01013403          	ld	s0,16(sp)
    80005b9c:	00813483          	ld	s1,8(sp)
    80005ba0:	00013903          	ld	s2,0(sp)
    80005ba4:	02010113          	addi	sp,sp,32
    80005ba8:	00008067          	ret

0000000080005bac <_ZN10WorkerAModD1Ev>:
class WorkerAMod: public Thread {
    80005bac:	ff010113          	addi	sp,sp,-16
    80005bb0:	00113423          	sd	ra,8(sp)
    80005bb4:	00813023          	sd	s0,0(sp)
    80005bb8:	01010413          	addi	s0,sp,16
    80005bbc:	00006797          	auipc	a5,0x6
    80005bc0:	fe478793          	addi	a5,a5,-28 # 8000bba0 <_ZTV10WorkerAMod+0x10>
    80005bc4:	00f53023          	sd	a5,0(a0)
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	014080e7          	jalr	20(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80005bd0:	00813083          	ld	ra,8(sp)
    80005bd4:	00013403          	ld	s0,0(sp)
    80005bd8:	01010113          	addi	sp,sp,16
    80005bdc:	00008067          	ret

0000000080005be0 <_ZN10WorkerAModD0Ev>:
    80005be0:	fe010113          	addi	sp,sp,-32
    80005be4:	00113c23          	sd	ra,24(sp)
    80005be8:	00813823          	sd	s0,16(sp)
    80005bec:	00913423          	sd	s1,8(sp)
    80005bf0:	02010413          	addi	s0,sp,32
    80005bf4:	00050493          	mv	s1,a0
    80005bf8:	00006797          	auipc	a5,0x6
    80005bfc:	fa878793          	addi	a5,a5,-88 # 8000bba0 <_ZTV10WorkerAMod+0x10>
    80005c00:	00f53023          	sd	a5,0(a0)
    80005c04:	ffffc097          	auipc	ra,0xffffc
    80005c08:	fd8080e7          	jalr	-40(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80005c0c:	00048513          	mv	a0,s1
    80005c10:	ffffc097          	auipc	ra,0xffffc
    80005c14:	f7c080e7          	jalr	-132(ra) # 80001b8c <_ZdlPv>
    80005c18:	01813083          	ld	ra,24(sp)
    80005c1c:	01013403          	ld	s0,16(sp)
    80005c20:	00813483          	ld	s1,8(sp)
    80005c24:	02010113          	addi	sp,sp,32
    80005c28:	00008067          	ret

0000000080005c2c <_ZN10WorkerBModD1Ev>:
class WorkerBMod: public Thread {
    80005c2c:	ff010113          	addi	sp,sp,-16
    80005c30:	00113423          	sd	ra,8(sp)
    80005c34:	00813023          	sd	s0,0(sp)
    80005c38:	01010413          	addi	s0,sp,16
    80005c3c:	00006797          	auipc	a5,0x6
    80005c40:	f8c78793          	addi	a5,a5,-116 # 8000bbc8 <_ZTV10WorkerBMod+0x10>
    80005c44:	00f53023          	sd	a5,0(a0)
    80005c48:	ffffc097          	auipc	ra,0xffffc
    80005c4c:	f94080e7          	jalr	-108(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80005c50:	00813083          	ld	ra,8(sp)
    80005c54:	00013403          	ld	s0,0(sp)
    80005c58:	01010113          	addi	sp,sp,16
    80005c5c:	00008067          	ret

0000000080005c60 <_ZN10WorkerBModD0Ev>:
    80005c60:	fe010113          	addi	sp,sp,-32
    80005c64:	00113c23          	sd	ra,24(sp)
    80005c68:	00813823          	sd	s0,16(sp)
    80005c6c:	00913423          	sd	s1,8(sp)
    80005c70:	02010413          	addi	s0,sp,32
    80005c74:	00050493          	mv	s1,a0
    80005c78:	00006797          	auipc	a5,0x6
    80005c7c:	f5078793          	addi	a5,a5,-176 # 8000bbc8 <_ZTV10WorkerBMod+0x10>
    80005c80:	00f53023          	sd	a5,0(a0)
    80005c84:	ffffc097          	auipc	ra,0xffffc
    80005c88:	f58080e7          	jalr	-168(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80005c8c:	00048513          	mv	a0,s1
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	efc080e7          	jalr	-260(ra) # 80001b8c <_ZdlPv>
    80005c98:	01813083          	ld	ra,24(sp)
    80005c9c:	01013403          	ld	s0,16(sp)
    80005ca0:	00813483          	ld	s1,8(sp)
    80005ca4:	02010113          	addi	sp,sp,32
    80005ca8:	00008067          	ret

0000000080005cac <_ZN10WorkerCModD1Ev>:
class WorkerCMod: public Thread {
    80005cac:	ff010113          	addi	sp,sp,-16
    80005cb0:	00113423          	sd	ra,8(sp)
    80005cb4:	00813023          	sd	s0,0(sp)
    80005cb8:	01010413          	addi	s0,sp,16
    80005cbc:	00006797          	auipc	a5,0x6
    80005cc0:	f3478793          	addi	a5,a5,-204 # 8000bbf0 <_ZTV10WorkerCMod+0x10>
    80005cc4:	00f53023          	sd	a5,0(a0)
    80005cc8:	ffffc097          	auipc	ra,0xffffc
    80005ccc:	f14080e7          	jalr	-236(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80005cd0:	00813083          	ld	ra,8(sp)
    80005cd4:	00013403          	ld	s0,0(sp)
    80005cd8:	01010113          	addi	sp,sp,16
    80005cdc:	00008067          	ret

0000000080005ce0 <_ZN10WorkerCModD0Ev>:
    80005ce0:	fe010113          	addi	sp,sp,-32
    80005ce4:	00113c23          	sd	ra,24(sp)
    80005ce8:	00813823          	sd	s0,16(sp)
    80005cec:	00913423          	sd	s1,8(sp)
    80005cf0:	02010413          	addi	s0,sp,32
    80005cf4:	00050493          	mv	s1,a0
    80005cf8:	00006797          	auipc	a5,0x6
    80005cfc:	ef878793          	addi	a5,a5,-264 # 8000bbf0 <_ZTV10WorkerCMod+0x10>
    80005d00:	00f53023          	sd	a5,0(a0)
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	ed8080e7          	jalr	-296(ra) # 80001bdc <_ZN6ThreadD1Ev>
    80005d0c:	00048513          	mv	a0,s1
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	e7c080e7          	jalr	-388(ra) # 80001b8c <_ZdlPv>
    80005d18:	01813083          	ld	ra,24(sp)
    80005d1c:	01013403          	ld	s0,16(sp)
    80005d20:	00813483          	ld	s1,8(sp)
    80005d24:	02010113          	addi	sp,sp,32
    80005d28:	00008067          	ret

0000000080005d2c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005d2c:	fe010113          	addi	sp,sp,-32
    80005d30:	00113c23          	sd	ra,24(sp)
    80005d34:	00813823          	sd	s0,16(sp)
    80005d38:	00913423          	sd	s1,8(sp)
    80005d3c:	01213023          	sd	s2,0(sp)
    80005d40:	02010413          	addi	s0,sp,32
    80005d44:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d48:	00100793          	li	a5,1
    80005d4c:	02a7f863          	bgeu	a5,a0,80005d7c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d50:	00a00793          	li	a5,10
    80005d54:	02f577b3          	remu	a5,a0,a5
    80005d58:	02078e63          	beqz	a5,80005d94 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d5c:	fff48513          	addi	a0,s1,-1
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	fcc080e7          	jalr	-52(ra) # 80005d2c <_ZL9fibonaccim>
    80005d68:	00050913          	mv	s2,a0
    80005d6c:	ffe48513          	addi	a0,s1,-2
    80005d70:	00000097          	auipc	ra,0x0
    80005d74:	fbc080e7          	jalr	-68(ra) # 80005d2c <_ZL9fibonaccim>
    80005d78:	00a90533          	add	a0,s2,a0
}
    80005d7c:	01813083          	ld	ra,24(sp)
    80005d80:	01013403          	ld	s0,16(sp)
    80005d84:	00813483          	ld	s1,8(sp)
    80005d88:	00013903          	ld	s2,0(sp)
    80005d8c:	02010113          	addi	sp,sp,32
    80005d90:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005d94:	ffffb097          	auipc	ra,0xffffb
    80005d98:	510080e7          	jalr	1296(ra) # 800012a4 <_Z15thread_dispatchv>
    80005d9c:	fc1ff06f          	j	80005d5c <_ZL9fibonaccim+0x30>

0000000080005da0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005da0:	fe010113          	addi	sp,sp,-32
    80005da4:	00113c23          	sd	ra,24(sp)
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	01213023          	sd	s2,0(sp)
    80005db4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005db8:	00a00493          	li	s1,10
    80005dbc:	0400006f          	j	80005dfc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005dc0:	00003517          	auipc	a0,0x3
    80005dc4:	53850513          	addi	a0,a0,1336 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005dc8:	fffff097          	auipc	ra,0xfffff
    80005dcc:	0b4080e7          	jalr	180(ra) # 80004e7c <_Z11printStringPKc>
    80005dd0:	00000613          	li	a2,0
    80005dd4:	00a00593          	li	a1,10
    80005dd8:	00048513          	mv	a0,s1
    80005ddc:	fffff097          	auipc	ra,0xfffff
    80005de0:	250080e7          	jalr	592(ra) # 8000502c <_Z8printIntiii>
    80005de4:	00004517          	auipc	a0,0x4
    80005de8:	9b450513          	addi	a0,a0,-1612 # 80009798 <CONSOLE_STATUS+0x788>
    80005dec:	fffff097          	auipc	ra,0xfffff
    80005df0:	090080e7          	jalr	144(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005df4:	0014849b          	addiw	s1,s1,1
    80005df8:	0ff4f493          	andi	s1,s1,255
    80005dfc:	00c00793          	li	a5,12
    80005e00:	fc97f0e3          	bgeu	a5,s1,80005dc0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e04:	00003517          	auipc	a0,0x3
    80005e08:	4fc50513          	addi	a0,a0,1276 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	070080e7          	jalr	112(ra) # 80004e7c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e14:	00500313          	li	t1,5
    thread_dispatch();
    80005e18:	ffffb097          	auipc	ra,0xffffb
    80005e1c:	48c080e7          	jalr	1164(ra) # 800012a4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005e20:	01000513          	li	a0,16
    80005e24:	00000097          	auipc	ra,0x0
    80005e28:	f08080e7          	jalr	-248(ra) # 80005d2c <_ZL9fibonaccim>
    80005e2c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e30:	00003517          	auipc	a0,0x3
    80005e34:	4e050513          	addi	a0,a0,1248 # 80009310 <CONSOLE_STATUS+0x300>
    80005e38:	fffff097          	auipc	ra,0xfffff
    80005e3c:	044080e7          	jalr	68(ra) # 80004e7c <_Z11printStringPKc>
    80005e40:	00000613          	li	a2,0
    80005e44:	00a00593          	li	a1,10
    80005e48:	0009051b          	sext.w	a0,s2
    80005e4c:	fffff097          	auipc	ra,0xfffff
    80005e50:	1e0080e7          	jalr	480(ra) # 8000502c <_Z8printIntiii>
    80005e54:	00004517          	auipc	a0,0x4
    80005e58:	94450513          	addi	a0,a0,-1724 # 80009798 <CONSOLE_STATUS+0x788>
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	020080e7          	jalr	32(ra) # 80004e7c <_Z11printStringPKc>
    80005e64:	0400006f          	j	80005ea4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e68:	00003517          	auipc	a0,0x3
    80005e6c:	49050513          	addi	a0,a0,1168 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	00c080e7          	jalr	12(ra) # 80004e7c <_Z11printStringPKc>
    80005e78:	00000613          	li	a2,0
    80005e7c:	00a00593          	li	a1,10
    80005e80:	00048513          	mv	a0,s1
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	1a8080e7          	jalr	424(ra) # 8000502c <_Z8printIntiii>
    80005e8c:	00004517          	auipc	a0,0x4
    80005e90:	90c50513          	addi	a0,a0,-1780 # 80009798 <CONSOLE_STATUS+0x788>
    80005e94:	fffff097          	auipc	ra,0xfffff
    80005e98:	fe8080e7          	jalr	-24(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005e9c:	0014849b          	addiw	s1,s1,1
    80005ea0:	0ff4f493          	andi	s1,s1,255
    80005ea4:	00f00793          	li	a5,15
    80005ea8:	fc97f0e3          	bgeu	a5,s1,80005e68 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005eac:	00003517          	auipc	a0,0x3
    80005eb0:	47450513          	addi	a0,a0,1140 # 80009320 <CONSOLE_STATUS+0x310>
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	fc8080e7          	jalr	-56(ra) # 80004e7c <_Z11printStringPKc>
    finishedD = true;
    80005ebc:	00100793          	li	a5,1
    80005ec0:	00006717          	auipc	a4,0x6
    80005ec4:	eaf70d23          	sb	a5,-326(a4) # 8000bd7a <_ZL9finishedD>
    thread_dispatch();
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	3dc080e7          	jalr	988(ra) # 800012a4 <_Z15thread_dispatchv>
}
    80005ed0:	01813083          	ld	ra,24(sp)
    80005ed4:	01013403          	ld	s0,16(sp)
    80005ed8:	00813483          	ld	s1,8(sp)
    80005edc:	00013903          	ld	s2,0(sp)
    80005ee0:	02010113          	addi	sp,sp,32
    80005ee4:	00008067          	ret

0000000080005ee8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005ee8:	fe010113          	addi	sp,sp,-32
    80005eec:	00113c23          	sd	ra,24(sp)
    80005ef0:	00813823          	sd	s0,16(sp)
    80005ef4:	00913423          	sd	s1,8(sp)
    80005ef8:	01213023          	sd	s2,0(sp)
    80005efc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f00:	00000493          	li	s1,0
    80005f04:	0400006f          	j	80005f44 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f08:	00003517          	auipc	a0,0x3
    80005f0c:	3c050513          	addi	a0,a0,960 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005f10:	fffff097          	auipc	ra,0xfffff
    80005f14:	f6c080e7          	jalr	-148(ra) # 80004e7c <_Z11printStringPKc>
    80005f18:	00000613          	li	a2,0
    80005f1c:	00a00593          	li	a1,10
    80005f20:	00048513          	mv	a0,s1
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	108080e7          	jalr	264(ra) # 8000502c <_Z8printIntiii>
    80005f2c:	00004517          	auipc	a0,0x4
    80005f30:	86c50513          	addi	a0,a0,-1940 # 80009798 <CONSOLE_STATUS+0x788>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	f48080e7          	jalr	-184(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005f3c:	0014849b          	addiw	s1,s1,1
    80005f40:	0ff4f493          	andi	s1,s1,255
    80005f44:	00200793          	li	a5,2
    80005f48:	fc97f0e3          	bgeu	a5,s1,80005f08 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005f4c:	00003517          	auipc	a0,0x3
    80005f50:	38450513          	addi	a0,a0,900 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005f54:	fffff097          	auipc	ra,0xfffff
    80005f58:	f28080e7          	jalr	-216(ra) # 80004e7c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005f5c:	00700313          	li	t1,7
    thread_dispatch();
    80005f60:	ffffb097          	auipc	ra,0xffffb
    80005f64:	344080e7          	jalr	836(ra) # 800012a4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005f68:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	37450513          	addi	a0,a0,884 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005f74:	fffff097          	auipc	ra,0xfffff
    80005f78:	f08080e7          	jalr	-248(ra) # 80004e7c <_Z11printStringPKc>
    80005f7c:	00000613          	li	a2,0
    80005f80:	00a00593          	li	a1,10
    80005f84:	0009051b          	sext.w	a0,s2
    80005f88:	fffff097          	auipc	ra,0xfffff
    80005f8c:	0a4080e7          	jalr	164(ra) # 8000502c <_Z8printIntiii>
    80005f90:	00004517          	auipc	a0,0x4
    80005f94:	80850513          	addi	a0,a0,-2040 # 80009798 <CONSOLE_STATUS+0x788>
    80005f98:	fffff097          	auipc	ra,0xfffff
    80005f9c:	ee4080e7          	jalr	-284(ra) # 80004e7c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005fa0:	00c00513          	li	a0,12
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	d88080e7          	jalr	-632(ra) # 80005d2c <_ZL9fibonaccim>
    80005fac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005fb0:	00003517          	auipc	a0,0x3
    80005fb4:	33850513          	addi	a0,a0,824 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	ec4080e7          	jalr	-316(ra) # 80004e7c <_Z11printStringPKc>
    80005fc0:	00000613          	li	a2,0
    80005fc4:	00a00593          	li	a1,10
    80005fc8:	0009051b          	sext.w	a0,s2
    80005fcc:	fffff097          	auipc	ra,0xfffff
    80005fd0:	060080e7          	jalr	96(ra) # 8000502c <_Z8printIntiii>
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	7c450513          	addi	a0,a0,1988 # 80009798 <CONSOLE_STATUS+0x788>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	ea0080e7          	jalr	-352(ra) # 80004e7c <_Z11printStringPKc>
    80005fe4:	0400006f          	j	80006024 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005fe8:	00003517          	auipc	a0,0x3
    80005fec:	2e050513          	addi	a0,a0,736 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	e8c080e7          	jalr	-372(ra) # 80004e7c <_Z11printStringPKc>
    80005ff8:	00000613          	li	a2,0
    80005ffc:	00a00593          	li	a1,10
    80006000:	00048513          	mv	a0,s1
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	028080e7          	jalr	40(ra) # 8000502c <_Z8printIntiii>
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	78c50513          	addi	a0,a0,1932 # 80009798 <CONSOLE_STATUS+0x788>
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	e68080e7          	jalr	-408(ra) # 80004e7c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000601c:	0014849b          	addiw	s1,s1,1
    80006020:	0ff4f493          	andi	s1,s1,255
    80006024:	00500793          	li	a5,5
    80006028:	fc97f0e3          	bgeu	a5,s1,80005fe8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000602c:	00003517          	auipc	a0,0x3
    80006030:	27450513          	addi	a0,a0,628 # 800092a0 <CONSOLE_STATUS+0x290>
    80006034:	fffff097          	auipc	ra,0xfffff
    80006038:	e48080e7          	jalr	-440(ra) # 80004e7c <_Z11printStringPKc>
    finishedC = true;
    8000603c:	00100793          	li	a5,1
    80006040:	00006717          	auipc	a4,0x6
    80006044:	d2f70da3          	sb	a5,-709(a4) # 8000bd7b <_ZL9finishedC>
    thread_dispatch();
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	25c080e7          	jalr	604(ra) # 800012a4 <_Z15thread_dispatchv>
}
    80006050:	01813083          	ld	ra,24(sp)
    80006054:	01013403          	ld	s0,16(sp)
    80006058:	00813483          	ld	s1,8(sp)
    8000605c:	00013903          	ld	s2,0(sp)
    80006060:	02010113          	addi	sp,sp,32
    80006064:	00008067          	ret

0000000080006068 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006068:	fe010113          	addi	sp,sp,-32
    8000606c:	00113c23          	sd	ra,24(sp)
    80006070:	00813823          	sd	s0,16(sp)
    80006074:	00913423          	sd	s1,8(sp)
    80006078:	01213023          	sd	s2,0(sp)
    8000607c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006080:	00000913          	li	s2,0
    80006084:	0400006f          	j	800060c4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	21c080e7          	jalr	540(ra) # 800012a4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006090:	00148493          	addi	s1,s1,1
    80006094:	000027b7          	lui	a5,0x2
    80006098:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000609c:	0097ee63          	bltu	a5,s1,800060b8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060a0:	00000713          	li	a4,0
    800060a4:	000077b7          	lui	a5,0x7
    800060a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060ac:	fce7eee3          	bltu	a5,a4,80006088 <_ZL11workerBodyBPv+0x20>
    800060b0:	00170713          	addi	a4,a4,1
    800060b4:	ff1ff06f          	j	800060a4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800060b8:	00a00793          	li	a5,10
    800060bc:	04f90663          	beq	s2,a5,80006108 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800060c0:	00190913          	addi	s2,s2,1
    800060c4:	00f00793          	li	a5,15
    800060c8:	0527e463          	bltu	a5,s2,80006110 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800060cc:	00003517          	auipc	a0,0x3
    800060d0:	1e450513          	addi	a0,a0,484 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	da8080e7          	jalr	-600(ra) # 80004e7c <_Z11printStringPKc>
    800060dc:	00000613          	li	a2,0
    800060e0:	00a00593          	li	a1,10
    800060e4:	0009051b          	sext.w	a0,s2
    800060e8:	fffff097          	auipc	ra,0xfffff
    800060ec:	f44080e7          	jalr	-188(ra) # 8000502c <_Z8printIntiii>
    800060f0:	00003517          	auipc	a0,0x3
    800060f4:	6a850513          	addi	a0,a0,1704 # 80009798 <CONSOLE_STATUS+0x788>
    800060f8:	fffff097          	auipc	ra,0xfffff
    800060fc:	d84080e7          	jalr	-636(ra) # 80004e7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006100:	00000493          	li	s1,0
    80006104:	f91ff06f          	j	80006094 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006108:	14102ff3          	csrr	t6,sepc
    8000610c:	fb5ff06f          	j	800060c0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006110:	00003517          	auipc	a0,0x3
    80006114:	1a850513          	addi	a0,a0,424 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006118:	fffff097          	auipc	ra,0xfffff
    8000611c:	d64080e7          	jalr	-668(ra) # 80004e7c <_Z11printStringPKc>
    finishedB = true;
    80006120:	00100793          	li	a5,1
    80006124:	00006717          	auipc	a4,0x6
    80006128:	c4f70c23          	sb	a5,-936(a4) # 8000bd7c <_ZL9finishedB>
    thread_dispatch();
    8000612c:	ffffb097          	auipc	ra,0xffffb
    80006130:	178080e7          	jalr	376(ra) # 800012a4 <_Z15thread_dispatchv>
}
    80006134:	01813083          	ld	ra,24(sp)
    80006138:	01013403          	ld	s0,16(sp)
    8000613c:	00813483          	ld	s1,8(sp)
    80006140:	00013903          	ld	s2,0(sp)
    80006144:	02010113          	addi	sp,sp,32
    80006148:	00008067          	ret

000000008000614c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000614c:	fe010113          	addi	sp,sp,-32
    80006150:	00113c23          	sd	ra,24(sp)
    80006154:	00813823          	sd	s0,16(sp)
    80006158:	00913423          	sd	s1,8(sp)
    8000615c:	01213023          	sd	s2,0(sp)
    80006160:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006164:	00000913          	li	s2,0
    80006168:	0380006f          	j	800061a0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000616c:	ffffb097          	auipc	ra,0xffffb
    80006170:	138080e7          	jalr	312(ra) # 800012a4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006174:	00148493          	addi	s1,s1,1
    80006178:	000027b7          	lui	a5,0x2
    8000617c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006180:	0097ee63          	bltu	a5,s1,8000619c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006184:	00000713          	li	a4,0
    80006188:	000077b7          	lui	a5,0x7
    8000618c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006190:	fce7eee3          	bltu	a5,a4,8000616c <_ZL11workerBodyAPv+0x20>
    80006194:	00170713          	addi	a4,a4,1
    80006198:	ff1ff06f          	j	80006188 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000619c:	00190913          	addi	s2,s2,1
    800061a0:	00900793          	li	a5,9
    800061a4:	0527e063          	bltu	a5,s2,800061e4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800061a8:	00003517          	auipc	a0,0x3
    800061ac:	0f050513          	addi	a0,a0,240 # 80009298 <CONSOLE_STATUS+0x288>
    800061b0:	fffff097          	auipc	ra,0xfffff
    800061b4:	ccc080e7          	jalr	-820(ra) # 80004e7c <_Z11printStringPKc>
    800061b8:	00000613          	li	a2,0
    800061bc:	00a00593          	li	a1,10
    800061c0:	0009051b          	sext.w	a0,s2
    800061c4:	fffff097          	auipc	ra,0xfffff
    800061c8:	e68080e7          	jalr	-408(ra) # 8000502c <_Z8printIntiii>
    800061cc:	00003517          	auipc	a0,0x3
    800061d0:	5cc50513          	addi	a0,a0,1484 # 80009798 <CONSOLE_STATUS+0x788>
    800061d4:	fffff097          	auipc	ra,0xfffff
    800061d8:	ca8080e7          	jalr	-856(ra) # 80004e7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800061dc:	00000493          	li	s1,0
    800061e0:	f99ff06f          	j	80006178 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	0bc50513          	addi	a0,a0,188 # 800092a0 <CONSOLE_STATUS+0x290>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	c90080e7          	jalr	-880(ra) # 80004e7c <_Z11printStringPKc>
    finishedA = true;
    800061f4:	00100793          	li	a5,1
    800061f8:	00006717          	auipc	a4,0x6
    800061fc:	b8f702a3          	sb	a5,-1147(a4) # 8000bd7d <_ZL9finishedA>
}
    80006200:	01813083          	ld	ra,24(sp)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	00813483          	ld	s1,8(sp)
    8000620c:	00013903          	ld	s2,0(sp)
    80006210:	02010113          	addi	sp,sp,32
    80006214:	00008067          	ret

0000000080006218 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006218:	fd010113          	addi	sp,sp,-48
    8000621c:	02113423          	sd	ra,40(sp)
    80006220:	02813023          	sd	s0,32(sp)
    80006224:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006228:	00000613          	li	a2,0
    8000622c:	00000597          	auipc	a1,0x0
    80006230:	f2058593          	addi	a1,a1,-224 # 8000614c <_ZL11workerBodyAPv>
    80006234:	fd040513          	addi	a0,s0,-48
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	ff0080e7          	jalr	-16(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006240:	00003517          	auipc	a0,0x3
    80006244:	0f050513          	addi	a0,a0,240 # 80009330 <CONSOLE_STATUS+0x320>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	c34080e7          	jalr	-972(ra) # 80004e7c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006250:	00000613          	li	a2,0
    80006254:	00000597          	auipc	a1,0x0
    80006258:	e1458593          	addi	a1,a1,-492 # 80006068 <_ZL11workerBodyBPv>
    8000625c:	fd840513          	addi	a0,s0,-40
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	fc8080e7          	jalr	-56(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006268:	00003517          	auipc	a0,0x3
    8000626c:	0e050513          	addi	a0,a0,224 # 80009348 <CONSOLE_STATUS+0x338>
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	c0c080e7          	jalr	-1012(ra) # 80004e7c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006278:	00000613          	li	a2,0
    8000627c:	00000597          	auipc	a1,0x0
    80006280:	c6c58593          	addi	a1,a1,-916 # 80005ee8 <_ZL11workerBodyCPv>
    80006284:	fe040513          	addi	a0,s0,-32
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	fa0080e7          	jalr	-96(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006290:	00003517          	auipc	a0,0x3
    80006294:	0d050513          	addi	a0,a0,208 # 80009360 <CONSOLE_STATUS+0x350>
    80006298:	fffff097          	auipc	ra,0xfffff
    8000629c:	be4080e7          	jalr	-1052(ra) # 80004e7c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062a0:	00000613          	li	a2,0
    800062a4:	00000597          	auipc	a1,0x0
    800062a8:	afc58593          	addi	a1,a1,-1284 # 80005da0 <_ZL11workerBodyDPv>
    800062ac:	fe840513          	addi	a0,s0,-24
    800062b0:	ffffb097          	auipc	ra,0xffffb
    800062b4:	f78080e7          	jalr	-136(ra) # 80001228 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	0c050513          	addi	a0,a0,192 # 80009378 <CONSOLE_STATUS+0x368>
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	bbc080e7          	jalr	-1092(ra) # 80004e7c <_Z11printStringPKc>
    800062c8:	00c0006f          	j	800062d4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800062cc:	ffffb097          	auipc	ra,0xffffb
    800062d0:	fd8080e7          	jalr	-40(ra) # 800012a4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800062d4:	00006797          	auipc	a5,0x6
    800062d8:	aa97c783          	lbu	a5,-1367(a5) # 8000bd7d <_ZL9finishedA>
    800062dc:	fe0788e3          	beqz	a5,800062cc <_Z16System_Mode_testv+0xb4>
    800062e0:	00006797          	auipc	a5,0x6
    800062e4:	a9c7c783          	lbu	a5,-1380(a5) # 8000bd7c <_ZL9finishedB>
    800062e8:	fe0782e3          	beqz	a5,800062cc <_Z16System_Mode_testv+0xb4>
    800062ec:	00006797          	auipc	a5,0x6
    800062f0:	a8f7c783          	lbu	a5,-1393(a5) # 8000bd7b <_ZL9finishedC>
    800062f4:	fc078ce3          	beqz	a5,800062cc <_Z16System_Mode_testv+0xb4>
    800062f8:	00006797          	auipc	a5,0x6
    800062fc:	a827c783          	lbu	a5,-1406(a5) # 8000bd7a <_ZL9finishedD>
    80006300:	fc0786e3          	beqz	a5,800062cc <_Z16System_Mode_testv+0xb4>
    }

}
    80006304:	02813083          	ld	ra,40(sp)
    80006308:	02013403          	ld	s0,32(sp)
    8000630c:	03010113          	addi	sp,sp,48
    80006310:	00008067          	ret

0000000080006314 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006314:	fe010113          	addi	sp,sp,-32
    80006318:	00113c23          	sd	ra,24(sp)
    8000631c:	00813823          	sd	s0,16(sp)
    80006320:	00913423          	sd	s1,8(sp)
    80006324:	01213023          	sd	s2,0(sp)
    80006328:	02010413          	addi	s0,sp,32
    8000632c:	00050493          	mv	s1,a0
    80006330:	00058913          	mv	s2,a1
    80006334:	0015879b          	addiw	a5,a1,1
    80006338:	0007851b          	sext.w	a0,a5
    8000633c:	00f4a023          	sw	a5,0(s1)
    80006340:	0004a823          	sw	zero,16(s1)
    80006344:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006348:	00251513          	slli	a0,a0,0x2
    8000634c:	ffffb097          	auipc	ra,0xffffb
    80006350:	e54080e7          	jalr	-428(ra) # 800011a0 <_Z9mem_allocm>
    80006354:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006358:	00000593          	li	a1,0
    8000635c:	02048513          	addi	a0,s1,32
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	01c080e7          	jalr	28(ra) # 8000137c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80006368:	00090593          	mv	a1,s2
    8000636c:	01848513          	addi	a0,s1,24
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	00c080e7          	jalr	12(ra) # 8000137c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80006378:	00100593          	li	a1,1
    8000637c:	02848513          	addi	a0,s1,40
    80006380:	ffffb097          	auipc	ra,0xffffb
    80006384:	ffc080e7          	jalr	-4(ra) # 8000137c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80006388:	00100593          	li	a1,1
    8000638c:	03048513          	addi	a0,s1,48
    80006390:	ffffb097          	auipc	ra,0xffffb
    80006394:	fec080e7          	jalr	-20(ra) # 8000137c <_Z8sem_openPP3Semj>
}
    80006398:	01813083          	ld	ra,24(sp)
    8000639c:	01013403          	ld	s0,16(sp)
    800063a0:	00813483          	ld	s1,8(sp)
    800063a4:	00013903          	ld	s2,0(sp)
    800063a8:	02010113          	addi	sp,sp,32
    800063ac:	00008067          	ret

00000000800063b0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800063b0:	fe010113          	addi	sp,sp,-32
    800063b4:	00113c23          	sd	ra,24(sp)
    800063b8:	00813823          	sd	s0,16(sp)
    800063bc:	00913423          	sd	s1,8(sp)
    800063c0:	01213023          	sd	s2,0(sp)
    800063c4:	02010413          	addi	s0,sp,32
    800063c8:	00050493          	mv	s1,a0
    800063cc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800063d0:	01853503          	ld	a0,24(a0)
    800063d4:	ffffb097          	auipc	ra,0xffffb
    800063d8:	024080e7          	jalr	36(ra) # 800013f8 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800063dc:	0304b503          	ld	a0,48(s1)
    800063e0:	ffffb097          	auipc	ra,0xffffb
    800063e4:	018080e7          	jalr	24(ra) # 800013f8 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800063e8:	0084b783          	ld	a5,8(s1)
    800063ec:	0144a703          	lw	a4,20(s1)
    800063f0:	00271713          	slli	a4,a4,0x2
    800063f4:	00e787b3          	add	a5,a5,a4
    800063f8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063fc:	0144a783          	lw	a5,20(s1)
    80006400:	0017879b          	addiw	a5,a5,1
    80006404:	0004a703          	lw	a4,0(s1)
    80006408:	02e7e7bb          	remw	a5,a5,a4
    8000640c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006410:	0304b503          	ld	a0,48(s1)
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	020080e7          	jalr	32(ra) # 80001434 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    8000641c:	0204b503          	ld	a0,32(s1)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	014080e7          	jalr	20(ra) # 80001434 <_Z10sem_signalP3Sem>

}
    80006428:	01813083          	ld	ra,24(sp)
    8000642c:	01013403          	ld	s0,16(sp)
    80006430:	00813483          	ld	s1,8(sp)
    80006434:	00013903          	ld	s2,0(sp)
    80006438:	02010113          	addi	sp,sp,32
    8000643c:	00008067          	ret

0000000080006440 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00113c23          	sd	ra,24(sp)
    80006448:	00813823          	sd	s0,16(sp)
    8000644c:	00913423          	sd	s1,8(sp)
    80006450:	01213023          	sd	s2,0(sp)
    80006454:	02010413          	addi	s0,sp,32
    80006458:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000645c:	02053503          	ld	a0,32(a0)
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	f98080e7          	jalr	-104(ra) # 800013f8 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80006468:	0284b503          	ld	a0,40(s1)
    8000646c:	ffffb097          	auipc	ra,0xffffb
    80006470:	f8c080e7          	jalr	-116(ra) # 800013f8 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80006474:	0084b703          	ld	a4,8(s1)
    80006478:	0104a783          	lw	a5,16(s1)
    8000647c:	00279693          	slli	a3,a5,0x2
    80006480:	00d70733          	add	a4,a4,a3
    80006484:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006488:	0017879b          	addiw	a5,a5,1
    8000648c:	0004a703          	lw	a4,0(s1)
    80006490:	02e7e7bb          	remw	a5,a5,a4
    80006494:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006498:	0284b503          	ld	a0,40(s1)
    8000649c:	ffffb097          	auipc	ra,0xffffb
    800064a0:	f98080e7          	jalr	-104(ra) # 80001434 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800064a4:	0184b503          	ld	a0,24(s1)
    800064a8:	ffffb097          	auipc	ra,0xffffb
    800064ac:	f8c080e7          	jalr	-116(ra) # 80001434 <_Z10sem_signalP3Sem>

    return ret;
}
    800064b0:	00090513          	mv	a0,s2
    800064b4:	01813083          	ld	ra,24(sp)
    800064b8:	01013403          	ld	s0,16(sp)
    800064bc:	00813483          	ld	s1,8(sp)
    800064c0:	00013903          	ld	s2,0(sp)
    800064c4:	02010113          	addi	sp,sp,32
    800064c8:	00008067          	ret

00000000800064cc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800064cc:	fe010113          	addi	sp,sp,-32
    800064d0:	00113c23          	sd	ra,24(sp)
    800064d4:	00813823          	sd	s0,16(sp)
    800064d8:	00913423          	sd	s1,8(sp)
    800064dc:	01213023          	sd	s2,0(sp)
    800064e0:	02010413          	addi	s0,sp,32
    800064e4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800064e8:	02853503          	ld	a0,40(a0)
    800064ec:	ffffb097          	auipc	ra,0xffffb
    800064f0:	f0c080e7          	jalr	-244(ra) # 800013f8 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800064f4:	0304b503          	ld	a0,48(s1)
    800064f8:	ffffb097          	auipc	ra,0xffffb
    800064fc:	f00080e7          	jalr	-256(ra) # 800013f8 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80006500:	0144a783          	lw	a5,20(s1)
    80006504:	0104a903          	lw	s2,16(s1)
    80006508:	0327ce63          	blt	a5,s2,80006544 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000650c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006510:	0304b503          	ld	a0,48(s1)
    80006514:	ffffb097          	auipc	ra,0xffffb
    80006518:	f20080e7          	jalr	-224(ra) # 80001434 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    8000651c:	0284b503          	ld	a0,40(s1)
    80006520:	ffffb097          	auipc	ra,0xffffb
    80006524:	f14080e7          	jalr	-236(ra) # 80001434 <_Z10sem_signalP3Sem>

    return ret;
}
    80006528:	00090513          	mv	a0,s2
    8000652c:	01813083          	ld	ra,24(sp)
    80006530:	01013403          	ld	s0,16(sp)
    80006534:	00813483          	ld	s1,8(sp)
    80006538:	00013903          	ld	s2,0(sp)
    8000653c:	02010113          	addi	sp,sp,32
    80006540:	00008067          	ret
        ret = cap - head + tail;
    80006544:	0004a703          	lw	a4,0(s1)
    80006548:	4127093b          	subw	s2,a4,s2
    8000654c:	00f9093b          	addw	s2,s2,a5
    80006550:	fc1ff06f          	j	80006510 <_ZN6Buffer6getCntEv+0x44>

0000000080006554 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006554:	fe010113          	addi	sp,sp,-32
    80006558:	00113c23          	sd	ra,24(sp)
    8000655c:	00813823          	sd	s0,16(sp)
    80006560:	00913423          	sd	s1,8(sp)
    80006564:	02010413          	addi	s0,sp,32
    80006568:	00050493          	mv	s1,a0
    putc('\n');
    8000656c:	00a00513          	li	a0,10
    80006570:	ffffb097          	auipc	ra,0xffffb
    80006574:	fac080e7          	jalr	-84(ra) # 8000151c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	e1850513          	addi	a0,a0,-488 # 80009390 <CONSOLE_STATUS+0x380>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	8fc080e7          	jalr	-1796(ra) # 80004e7c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006588:	00048513          	mv	a0,s1
    8000658c:	00000097          	auipc	ra,0x0
    80006590:	f40080e7          	jalr	-192(ra) # 800064cc <_ZN6Buffer6getCntEv>
    80006594:	02a05c63          	blez	a0,800065cc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006598:	0084b783          	ld	a5,8(s1)
    8000659c:	0104a703          	lw	a4,16(s1)
    800065a0:	00271713          	slli	a4,a4,0x2
    800065a4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800065a8:	0007c503          	lbu	a0,0(a5)
    800065ac:	ffffb097          	auipc	ra,0xffffb
    800065b0:	f70080e7          	jalr	-144(ra) # 8000151c <_Z4putcc>
        head = (head + 1) % cap;
    800065b4:	0104a783          	lw	a5,16(s1)
    800065b8:	0017879b          	addiw	a5,a5,1
    800065bc:	0004a703          	lw	a4,0(s1)
    800065c0:	02e7e7bb          	remw	a5,a5,a4
    800065c4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800065c8:	fc1ff06f          	j	80006588 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800065cc:	02100513          	li	a0,33
    800065d0:	ffffb097          	auipc	ra,0xffffb
    800065d4:	f4c080e7          	jalr	-180(ra) # 8000151c <_Z4putcc>
    putc('\n');
    800065d8:	00a00513          	li	a0,10
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	f40080e7          	jalr	-192(ra) # 8000151c <_Z4putcc>
    mem_free(buffer);
    800065e4:	0084b503          	ld	a0,8(s1)
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	c04080e7          	jalr	-1020(ra) # 800011ec <_Z8mem_freePv>
    sem_close(itemAvailable);
    800065f0:	0204b503          	ld	a0,32(s1)
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	dc8080e7          	jalr	-568(ra) # 800013bc <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800065fc:	0184b503          	ld	a0,24(s1)
    80006600:	ffffb097          	auipc	ra,0xffffb
    80006604:	dbc080e7          	jalr	-580(ra) # 800013bc <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80006608:	0304b503          	ld	a0,48(s1)
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	db0080e7          	jalr	-592(ra) # 800013bc <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80006614:	0284b503          	ld	a0,40(s1)
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	da4080e7          	jalr	-604(ra) # 800013bc <_Z9sem_closeP3Sem>
}
    80006620:	01813083          	ld	ra,24(sp)
    80006624:	01013403          	ld	s0,16(sp)
    80006628:	00813483          	ld	s1,8(sp)
    8000662c:	02010113          	addi	sp,sp,32
    80006630:	00008067          	ret

0000000080006634 <_Z11testBarrierv>:
//        if(numberOfThreads == 0 ) thread_dispatch();
    }
};

void testBarrier()
{
    80006634:	f9010113          	addi	sp,sp,-112
    80006638:	06113423          	sd	ra,104(sp)
    8000663c:	06813023          	sd	s0,96(sp)
    80006640:	04913c23          	sd	s1,88(sp)
    80006644:	05213823          	sd	s2,80(sp)
    80006648:	07010413          	addi	s0,sp,112
    Thread* threads[10];

    for(int i = 0; i< N; i++){
    8000664c:	00000913          	li	s2,0
    80006650:	0480006f          	j	80006698 <_Z11testBarrierv+0x64>
    Test():Thread() {}
    80006654:	00005797          	auipc	a5,0x5
    80006658:	5c478793          	addi	a5,a5,1476 # 8000bc18 <_ZTV4Test+0x10>
    8000665c:	00f4b023          	sd	a5,0(s1)
        threads[i] = new Test();
    80006660:	00391793          	slli	a5,s2,0x3
    80006664:	fe040713          	addi	a4,s0,-32
    80006668:	00f707b3          	add	a5,a4,a5
    8000666c:	fa97b823          	sd	s1,-80(a5)
        printString("ThreadA created!\n");
    80006670:	00003517          	auipc	a0,0x3
    80006674:	0c850513          	addi	a0,a0,200 # 80009738 <CONSOLE_STATUS+0x728>
    80006678:	fffff097          	auipc	ra,0xfffff
    8000667c:	804080e7          	jalr	-2044(ra) # 80004e7c <_Z11printStringPKc>
        numberOfThreads++;
    80006680:	00005717          	auipc	a4,0x5
    80006684:	70070713          	addi	a4,a4,1792 # 8000bd80 <_ZL15numberOfThreads>
    80006688:	00072783          	lw	a5,0(a4)
    8000668c:	0017879b          	addiw	a5,a5,1
    80006690:	00f72023          	sw	a5,0(a4)
    for(int i = 0; i< N; i++){
    80006694:	0019091b          	addiw	s2,s2,1
    80006698:	00900793          	li	a5,9
    8000669c:	0327c063          	blt	a5,s2,800066bc <_Z11testBarrierv+0x88>
        threads[i] = new Test();
    800066a0:	02000513          	li	a0,32
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	498080e7          	jalr	1176(ra) # 80001b3c <_Znwm>
    800066ac:	00050493          	mv	s1,a0
    Test():Thread() {}
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	6dc080e7          	jalr	1756(ra) # 80001d8c <_ZN6ThreadC1Ev>
    800066b8:	f9dff06f          	j	80006654 <_Z11testBarrierv+0x20>
    }

    for(int i = 0; i< N; i++){
    800066bc:	00000493          	li	s1,0
    800066c0:	00900793          	li	a5,9
    800066c4:	0297c263          	blt	a5,s1,800066e8 <_Z11testBarrierv+0xb4>
        threads[i]->start();
    800066c8:	00349793          	slli	a5,s1,0x3
    800066cc:	fe040713          	addi	a4,s0,-32
    800066d0:	00f707b3          	add	a5,a4,a5
    800066d4:	fb07b503          	ld	a0,-80(a5)
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	708080e7          	jalr	1800(ra) # 80001de0 <_ZN6Thread5startEv>
    for(int i = 0; i< N; i++){
    800066e0:	0014849b          	addiw	s1,s1,1
    800066e4:	fddff06f          	j	800066c0 <_Z11testBarrierv+0x8c>
    }

    for(int i = 0; i< N; i++){
    800066e8:	00000493          	li	s1,0
    800066ec:	00900793          	li	a5,9
    800066f0:	0497c063          	blt	a5,s1,80006730 <_Z11testBarrierv+0xfc>
        threads[i]->join();
    800066f4:	00349793          	slli	a5,s1,0x3
    800066f8:	fe040713          	addi	a4,s0,-32
    800066fc:	00f707b3          	add	a5,a4,a5
    80006700:	fb07b503          	ld	a0,-80(a5)
    80006704:	ffffb097          	auipc	ra,0xffffb
    80006708:	734080e7          	jalr	1844(ra) # 80001e38 <_ZN6Thread4joinEv>
    for(int i = 0; i< N; i++){
    8000670c:	0014849b          	addiw	s1,s1,1
    80006710:	fddff06f          	j	800066ec <_Z11testBarrierv+0xb8>
    80006714:	00050913          	mv	s2,a0
        threads[i] = new Test();
    80006718:	00048513          	mv	a0,s1
    8000671c:	ffffb097          	auipc	ra,0xffffb
    80006720:	470080e7          	jalr	1136(ra) # 80001b8c <_ZdlPv>
    80006724:	00090513          	mv	a0,s2
    80006728:	00006097          	auipc	ra,0x6
    8000672c:	730080e7          	jalr	1840(ra) # 8000ce58 <_Unwind_Resume>
    }

    80006730:	06813083          	ld	ra,104(sp)
    80006734:	06013403          	ld	s0,96(sp)
    80006738:	05813483          	ld	s1,88(sp)
    8000673c:	05013903          	ld	s2,80(sp)
    80006740:	07010113          	addi	sp,sp,112
    80006744:	00008067          	ret

0000000080006748 <_ZN4Test3runEv>:
    void run() override {
    80006748:	fd010113          	addi	sp,sp,-48
    8000674c:	02113423          	sd	ra,40(sp)
    80006750:	02813023          	sd	s0,32(sp)
    80006754:	00913c23          	sd	s1,24(sp)
    80006758:	01213823          	sd	s2,16(sp)
    8000675c:	01313423          	sd	s3,8(sp)
    80006760:	03010413          	addi	s0,sp,48
        int id = getThreadId();
    80006764:	ffffb097          	auipc	ra,0xffffb
    80006768:	bac080e7          	jalr	-1108(ra) # 80001310 <_Z11getThreadIdv>
    8000676c:	00050493          	mv	s1,a0
        printString("Thread id= ");
    80006770:	00003517          	auipc	a0,0x3
    80006774:	01050513          	addi	a0,a0,16 # 80009780 <CONSOLE_STATUS+0x770>
    80006778:	ffffe097          	auipc	ra,0xffffe
    8000677c:	704080e7          	jalr	1796(ra) # 80004e7c <_Z11printStringPKc>
        printInt(id);
    80006780:	00000613          	li	a2,0
    80006784:	00a00593          	li	a1,10
    80006788:	00048513          	mv	a0,s1
    8000678c:	fffff097          	auipc	ra,0xfffff
    80006790:	8a0080e7          	jalr	-1888(ra) # 8000502c <_Z8printIntiii>
        printString(": START!\n");
    80006794:	00003517          	auipc	a0,0x3
    80006798:	ffc50513          	addi	a0,a0,-4 # 80009790 <CONSOLE_STATUS+0x780>
    8000679c:	ffffe097          	auipc	ra,0xffffe
    800067a0:	6e0080e7          	jalr	1760(ra) # 80004e7c <_Z11printStringPKc>
        for(int i = 0; i < 3; i++) {
    800067a4:	00000493          	li	s1,0
    800067a8:	0980006f          	j	80006840 <_ZN4Test3runEv+0xf8>
                thread_dispatch();
    800067ac:	ffffb097          	auipc	ra,0xffffb
    800067b0:	af8080e7          	jalr	-1288(ra) # 800012a4 <_Z15thread_dispatchv>
            for (int j = 0; j < 1000 * id; j++) {
    800067b4:	0019899b          	addiw	s3,s3,1
    800067b8:	3e800793          	li	a5,1000
    800067bc:	032787bb          	mulw	a5,a5,s2
    800067c0:	00f9de63          	bge	s3,a5,800067dc <_ZN4Test3runEv+0x94>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067c4:	00000793          	li	a5,0
    800067c8:	00007737          	lui	a4,0x7
    800067cc:	52f70713          	addi	a4,a4,1327 # 752f <_entry-0x7fff8ad1>
    800067d0:	fcf76ee3          	bltu	a4,a5,800067ac <_ZN4Test3runEv+0x64>
    800067d4:	00178793          	addi	a5,a5,1
    800067d8:	ff1ff06f          	j	800067c8 <_ZN4Test3runEv+0x80>
            barrier();
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	588080e7          	jalr	1416(ra) # 80001d64 <_ZN6Thread7barrierEv>
            printString(" Iteration=");
    800067e4:	00003517          	auipc	a0,0x3
    800067e8:	fbc50513          	addi	a0,a0,-68 # 800097a0 <CONSOLE_STATUS+0x790>
    800067ec:	ffffe097          	auipc	ra,0xffffe
    800067f0:	690080e7          	jalr	1680(ra) # 80004e7c <_Z11printStringPKc>
            printInt(i);
    800067f4:	00000613          	li	a2,0
    800067f8:	00a00593          	li	a1,10
    800067fc:	00048513          	mv	a0,s1
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	82c080e7          	jalr	-2004(ra) # 8000502c <_Z8printIntiii>
            printString("  Thread id= ");
    80006808:	00003517          	auipc	a0,0x3
    8000680c:	fa850513          	addi	a0,a0,-88 # 800097b0 <CONSOLE_STATUS+0x7a0>
    80006810:	ffffe097          	auipc	ra,0xffffe
    80006814:	66c080e7          	jalr	1644(ra) # 80004e7c <_Z11printStringPKc>
            printInt(id);
    80006818:	00000613          	li	a2,0
    8000681c:	00a00593          	li	a1,10
    80006820:	00090513          	mv	a0,s2
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	808080e7          	jalr	-2040(ra) # 8000502c <_Z8printIntiii>
            printString(": Finished!\n");
    8000682c:	00003517          	auipc	a0,0x3
    80006830:	f9450513          	addi	a0,a0,-108 # 800097c0 <CONSOLE_STATUS+0x7b0>
    80006834:	ffffe097          	auipc	ra,0xffffe
    80006838:	648080e7          	jalr	1608(ra) # 80004e7c <_Z11printStringPKc>
        for(int i = 0; i < 3; i++) {
    8000683c:	0014849b          	addiw	s1,s1,1
    80006840:	00200793          	li	a5,2
    80006844:	0097cc63          	blt	a5,s1,8000685c <_ZN4Test3runEv+0x114>
            int id = getThreadId();
    80006848:	ffffb097          	auipc	ra,0xffffb
    8000684c:	ac8080e7          	jalr	-1336(ra) # 80001310 <_Z11getThreadIdv>
    80006850:	00050913          	mv	s2,a0
            for (int j = 0; j < 1000 * id; j++) {
    80006854:	00000993          	li	s3,0
    80006858:	f61ff06f          	j	800067b8 <_ZN4Test3runEv+0x70>
    }
    8000685c:	02813083          	ld	ra,40(sp)
    80006860:	02013403          	ld	s0,32(sp)
    80006864:	01813483          	ld	s1,24(sp)
    80006868:	01013903          	ld	s2,16(sp)
    8000686c:	00813983          	ld	s3,8(sp)
    80006870:	03010113          	addi	sp,sp,48
    80006874:	00008067          	ret

0000000080006878 <_ZN4TestD1Ev>:
class Test: public Thread {
    80006878:	ff010113          	addi	sp,sp,-16
    8000687c:	00113423          	sd	ra,8(sp)
    80006880:	00813023          	sd	s0,0(sp)
    80006884:	01010413          	addi	s0,sp,16
    80006888:	00005797          	auipc	a5,0x5
    8000688c:	39078793          	addi	a5,a5,912 # 8000bc18 <_ZTV4Test+0x10>
    80006890:	00f53023          	sd	a5,0(a0)
    80006894:	ffffb097          	auipc	ra,0xffffb
    80006898:	348080e7          	jalr	840(ra) # 80001bdc <_ZN6ThreadD1Ev>
    8000689c:	00813083          	ld	ra,8(sp)
    800068a0:	00013403          	ld	s0,0(sp)
    800068a4:	01010113          	addi	sp,sp,16
    800068a8:	00008067          	ret

00000000800068ac <_ZN4TestD0Ev>:
    800068ac:	fe010113          	addi	sp,sp,-32
    800068b0:	00113c23          	sd	ra,24(sp)
    800068b4:	00813823          	sd	s0,16(sp)
    800068b8:	00913423          	sd	s1,8(sp)
    800068bc:	02010413          	addi	s0,sp,32
    800068c0:	00050493          	mv	s1,a0
    800068c4:	00005797          	auipc	a5,0x5
    800068c8:	35478793          	addi	a5,a5,852 # 8000bc18 <_ZTV4Test+0x10>
    800068cc:	00f53023          	sd	a5,0(a0)
    800068d0:	ffffb097          	auipc	ra,0xffffb
    800068d4:	30c080e7          	jalr	780(ra) # 80001bdc <_ZN6ThreadD1Ev>
    800068d8:	00048513          	mv	a0,s1
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	2b0080e7          	jalr	688(ra) # 80001b8c <_ZdlPv>
    800068e4:	01813083          	ld	ra,24(sp)
    800068e8:	01013403          	ld	s0,16(sp)
    800068ec:	00813483          	ld	s1,8(sp)
    800068f0:	02010113          	addi	sp,sp,32
    800068f4:	00008067          	ret

00000000800068f8 <start>:
    800068f8:	ff010113          	addi	sp,sp,-16
    800068fc:	00813423          	sd	s0,8(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	300027f3          	csrr	a5,mstatus
    80006908:	ffffe737          	lui	a4,0xffffe
    8000690c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff180f>
    80006910:	00e7f7b3          	and	a5,a5,a4
    80006914:	00001737          	lui	a4,0x1
    80006918:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000691c:	00e7e7b3          	or	a5,a5,a4
    80006920:	30079073          	csrw	mstatus,a5
    80006924:	00000797          	auipc	a5,0x0
    80006928:	16078793          	addi	a5,a5,352 # 80006a84 <system_main>
    8000692c:	34179073          	csrw	mepc,a5
    80006930:	00000793          	li	a5,0
    80006934:	18079073          	csrw	satp,a5
    80006938:	000107b7          	lui	a5,0x10
    8000693c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006940:	30279073          	csrw	medeleg,a5
    80006944:	30379073          	csrw	mideleg,a5
    80006948:	104027f3          	csrr	a5,sie
    8000694c:	2227e793          	ori	a5,a5,546
    80006950:	10479073          	csrw	sie,a5
    80006954:	fff00793          	li	a5,-1
    80006958:	00a7d793          	srli	a5,a5,0xa
    8000695c:	3b079073          	csrw	pmpaddr0,a5
    80006960:	00f00793          	li	a5,15
    80006964:	3a079073          	csrw	pmpcfg0,a5
    80006968:	f14027f3          	csrr	a5,mhartid
    8000696c:	0200c737          	lui	a4,0x200c
    80006970:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006974:	0007869b          	sext.w	a3,a5
    80006978:	00269713          	slli	a4,a3,0x2
    8000697c:	000f4637          	lui	a2,0xf4
    80006980:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006984:	00d70733          	add	a4,a4,a3
    80006988:	0037979b          	slliw	a5,a5,0x3
    8000698c:	020046b7          	lui	a3,0x2004
    80006990:	00d787b3          	add	a5,a5,a3
    80006994:	00c585b3          	add	a1,a1,a2
    80006998:	00371693          	slli	a3,a4,0x3
    8000699c:	00005717          	auipc	a4,0x5
    800069a0:	3f470713          	addi	a4,a4,1012 # 8000bd90 <timer_scratch>
    800069a4:	00b7b023          	sd	a1,0(a5)
    800069a8:	00d70733          	add	a4,a4,a3
    800069ac:	00f73c23          	sd	a5,24(a4)
    800069b0:	02c73023          	sd	a2,32(a4)
    800069b4:	34071073          	csrw	mscratch,a4
    800069b8:	00000797          	auipc	a5,0x0
    800069bc:	6e878793          	addi	a5,a5,1768 # 800070a0 <timervec>
    800069c0:	30579073          	csrw	mtvec,a5
    800069c4:	300027f3          	csrr	a5,mstatus
    800069c8:	0087e793          	ori	a5,a5,8
    800069cc:	30079073          	csrw	mstatus,a5
    800069d0:	304027f3          	csrr	a5,mie
    800069d4:	0807e793          	ori	a5,a5,128
    800069d8:	30479073          	csrw	mie,a5
    800069dc:	f14027f3          	csrr	a5,mhartid
    800069e0:	0007879b          	sext.w	a5,a5
    800069e4:	00078213          	mv	tp,a5
    800069e8:	30200073          	mret
    800069ec:	00813403          	ld	s0,8(sp)
    800069f0:	01010113          	addi	sp,sp,16
    800069f4:	00008067          	ret

00000000800069f8 <timerinit>:
    800069f8:	ff010113          	addi	sp,sp,-16
    800069fc:	00813423          	sd	s0,8(sp)
    80006a00:	01010413          	addi	s0,sp,16
    80006a04:	f14027f3          	csrr	a5,mhartid
    80006a08:	0200c737          	lui	a4,0x200c
    80006a0c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a10:	0007869b          	sext.w	a3,a5
    80006a14:	00269713          	slli	a4,a3,0x2
    80006a18:	000f4637          	lui	a2,0xf4
    80006a1c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a20:	00d70733          	add	a4,a4,a3
    80006a24:	0037979b          	slliw	a5,a5,0x3
    80006a28:	020046b7          	lui	a3,0x2004
    80006a2c:	00d787b3          	add	a5,a5,a3
    80006a30:	00c585b3          	add	a1,a1,a2
    80006a34:	00371693          	slli	a3,a4,0x3
    80006a38:	00005717          	auipc	a4,0x5
    80006a3c:	35870713          	addi	a4,a4,856 # 8000bd90 <timer_scratch>
    80006a40:	00b7b023          	sd	a1,0(a5)
    80006a44:	00d70733          	add	a4,a4,a3
    80006a48:	00f73c23          	sd	a5,24(a4)
    80006a4c:	02c73023          	sd	a2,32(a4)
    80006a50:	34071073          	csrw	mscratch,a4
    80006a54:	00000797          	auipc	a5,0x0
    80006a58:	64c78793          	addi	a5,a5,1612 # 800070a0 <timervec>
    80006a5c:	30579073          	csrw	mtvec,a5
    80006a60:	300027f3          	csrr	a5,mstatus
    80006a64:	0087e793          	ori	a5,a5,8
    80006a68:	30079073          	csrw	mstatus,a5
    80006a6c:	304027f3          	csrr	a5,mie
    80006a70:	0807e793          	ori	a5,a5,128
    80006a74:	30479073          	csrw	mie,a5
    80006a78:	00813403          	ld	s0,8(sp)
    80006a7c:	01010113          	addi	sp,sp,16
    80006a80:	00008067          	ret

0000000080006a84 <system_main>:
    80006a84:	fe010113          	addi	sp,sp,-32
    80006a88:	00813823          	sd	s0,16(sp)
    80006a8c:	00913423          	sd	s1,8(sp)
    80006a90:	00113c23          	sd	ra,24(sp)
    80006a94:	02010413          	addi	s0,sp,32
    80006a98:	00000097          	auipc	ra,0x0
    80006a9c:	0c4080e7          	jalr	196(ra) # 80006b5c <cpuid>
    80006aa0:	00005497          	auipc	s1,0x5
    80006aa4:	21048493          	addi	s1,s1,528 # 8000bcb0 <started>
    80006aa8:	02050263          	beqz	a0,80006acc <system_main+0x48>
    80006aac:	0004a783          	lw	a5,0(s1)
    80006ab0:	0007879b          	sext.w	a5,a5
    80006ab4:	fe078ce3          	beqz	a5,80006aac <system_main+0x28>
    80006ab8:	0ff0000f          	fence
    80006abc:	00003517          	auipc	a0,0x3
    80006ac0:	d4450513          	addi	a0,a0,-700 # 80009800 <CONSOLE_STATUS+0x7f0>
    80006ac4:	00001097          	auipc	ra,0x1
    80006ac8:	a78080e7          	jalr	-1416(ra) # 8000753c <panic>
    80006acc:	00001097          	auipc	ra,0x1
    80006ad0:	9cc080e7          	jalr	-1588(ra) # 80007498 <consoleinit>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	158080e7          	jalr	344(ra) # 80007c2c <printfinit>
    80006adc:	00003517          	auipc	a0,0x3
    80006ae0:	cbc50513          	addi	a0,a0,-836 # 80009798 <CONSOLE_STATUS+0x788>
    80006ae4:	00001097          	auipc	ra,0x1
    80006ae8:	ab4080e7          	jalr	-1356(ra) # 80007598 <__printf>
    80006aec:	00003517          	auipc	a0,0x3
    80006af0:	ce450513          	addi	a0,a0,-796 # 800097d0 <CONSOLE_STATUS+0x7c0>
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	aa4080e7          	jalr	-1372(ra) # 80007598 <__printf>
    80006afc:	00003517          	auipc	a0,0x3
    80006b00:	c9c50513          	addi	a0,a0,-868 # 80009798 <CONSOLE_STATUS+0x788>
    80006b04:	00001097          	auipc	ra,0x1
    80006b08:	a94080e7          	jalr	-1388(ra) # 80007598 <__printf>
    80006b0c:	00001097          	auipc	ra,0x1
    80006b10:	4ac080e7          	jalr	1196(ra) # 80007fb8 <kinit>
    80006b14:	00000097          	auipc	ra,0x0
    80006b18:	148080e7          	jalr	328(ra) # 80006c5c <trapinit>
    80006b1c:	00000097          	auipc	ra,0x0
    80006b20:	16c080e7          	jalr	364(ra) # 80006c88 <trapinithart>
    80006b24:	00000097          	auipc	ra,0x0
    80006b28:	5bc080e7          	jalr	1468(ra) # 800070e0 <plicinit>
    80006b2c:	00000097          	auipc	ra,0x0
    80006b30:	5dc080e7          	jalr	1500(ra) # 80007108 <plicinithart>
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	078080e7          	jalr	120(ra) # 80006bac <userinit>
    80006b3c:	0ff0000f          	fence
    80006b40:	00100793          	li	a5,1
    80006b44:	00003517          	auipc	a0,0x3
    80006b48:	ca450513          	addi	a0,a0,-860 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006b4c:	00f4a023          	sw	a5,0(s1)
    80006b50:	00001097          	auipc	ra,0x1
    80006b54:	a48080e7          	jalr	-1464(ra) # 80007598 <__printf>
    80006b58:	0000006f          	j	80006b58 <system_main+0xd4>

0000000080006b5c <cpuid>:
    80006b5c:	ff010113          	addi	sp,sp,-16
    80006b60:	00813423          	sd	s0,8(sp)
    80006b64:	01010413          	addi	s0,sp,16
    80006b68:	00020513          	mv	a0,tp
    80006b6c:	00813403          	ld	s0,8(sp)
    80006b70:	0005051b          	sext.w	a0,a0
    80006b74:	01010113          	addi	sp,sp,16
    80006b78:	00008067          	ret

0000000080006b7c <mycpu>:
    80006b7c:	ff010113          	addi	sp,sp,-16
    80006b80:	00813423          	sd	s0,8(sp)
    80006b84:	01010413          	addi	s0,sp,16
    80006b88:	00020793          	mv	a5,tp
    80006b8c:	00813403          	ld	s0,8(sp)
    80006b90:	0007879b          	sext.w	a5,a5
    80006b94:	00779793          	slli	a5,a5,0x7
    80006b98:	00006517          	auipc	a0,0x6
    80006b9c:	22850513          	addi	a0,a0,552 # 8000cdc0 <cpus>
    80006ba0:	00f50533          	add	a0,a0,a5
    80006ba4:	01010113          	addi	sp,sp,16
    80006ba8:	00008067          	ret

0000000080006bac <userinit>:
    80006bac:	ff010113          	addi	sp,sp,-16
    80006bb0:	00813423          	sd	s0,8(sp)
    80006bb4:	01010413          	addi	s0,sp,16
    80006bb8:	00813403          	ld	s0,8(sp)
    80006bbc:	01010113          	addi	sp,sp,16
    80006bc0:	ffffb317          	auipc	t1,0xffffb
    80006bc4:	9e830067          	jr	-1560(t1) # 800015a8 <main>

0000000080006bc8 <either_copyout>:
    80006bc8:	ff010113          	addi	sp,sp,-16
    80006bcc:	00813023          	sd	s0,0(sp)
    80006bd0:	00113423          	sd	ra,8(sp)
    80006bd4:	01010413          	addi	s0,sp,16
    80006bd8:	02051663          	bnez	a0,80006c04 <either_copyout+0x3c>
    80006bdc:	00058513          	mv	a0,a1
    80006be0:	00060593          	mv	a1,a2
    80006be4:	0006861b          	sext.w	a2,a3
    80006be8:	00002097          	auipc	ra,0x2
    80006bec:	c5c080e7          	jalr	-932(ra) # 80008844 <__memmove>
    80006bf0:	00813083          	ld	ra,8(sp)
    80006bf4:	00013403          	ld	s0,0(sp)
    80006bf8:	00000513          	li	a0,0
    80006bfc:	01010113          	addi	sp,sp,16
    80006c00:	00008067          	ret
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	c2450513          	addi	a0,a0,-988 # 80009828 <CONSOLE_STATUS+0x818>
    80006c0c:	00001097          	auipc	ra,0x1
    80006c10:	930080e7          	jalr	-1744(ra) # 8000753c <panic>

0000000080006c14 <either_copyin>:
    80006c14:	ff010113          	addi	sp,sp,-16
    80006c18:	00813023          	sd	s0,0(sp)
    80006c1c:	00113423          	sd	ra,8(sp)
    80006c20:	01010413          	addi	s0,sp,16
    80006c24:	02059463          	bnez	a1,80006c4c <either_copyin+0x38>
    80006c28:	00060593          	mv	a1,a2
    80006c2c:	0006861b          	sext.w	a2,a3
    80006c30:	00002097          	auipc	ra,0x2
    80006c34:	c14080e7          	jalr	-1004(ra) # 80008844 <__memmove>
    80006c38:	00813083          	ld	ra,8(sp)
    80006c3c:	00013403          	ld	s0,0(sp)
    80006c40:	00000513          	li	a0,0
    80006c44:	01010113          	addi	sp,sp,16
    80006c48:	00008067          	ret
    80006c4c:	00003517          	auipc	a0,0x3
    80006c50:	c0450513          	addi	a0,a0,-1020 # 80009850 <CONSOLE_STATUS+0x840>
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	8e8080e7          	jalr	-1816(ra) # 8000753c <panic>

0000000080006c5c <trapinit>:
    80006c5c:	ff010113          	addi	sp,sp,-16
    80006c60:	00813423          	sd	s0,8(sp)
    80006c64:	01010413          	addi	s0,sp,16
    80006c68:	00813403          	ld	s0,8(sp)
    80006c6c:	00003597          	auipc	a1,0x3
    80006c70:	c0c58593          	addi	a1,a1,-1012 # 80009878 <CONSOLE_STATUS+0x868>
    80006c74:	00006517          	auipc	a0,0x6
    80006c78:	1cc50513          	addi	a0,a0,460 # 8000ce40 <tickslock>
    80006c7c:	01010113          	addi	sp,sp,16
    80006c80:	00001317          	auipc	t1,0x1
    80006c84:	5c830067          	jr	1480(t1) # 80008248 <initlock>

0000000080006c88 <trapinithart>:
    80006c88:	ff010113          	addi	sp,sp,-16
    80006c8c:	00813423          	sd	s0,8(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	00000797          	auipc	a5,0x0
    80006c98:	2fc78793          	addi	a5,a5,764 # 80006f90 <kernelvec>
    80006c9c:	10579073          	csrw	stvec,a5
    80006ca0:	00813403          	ld	s0,8(sp)
    80006ca4:	01010113          	addi	sp,sp,16
    80006ca8:	00008067          	ret

0000000080006cac <usertrap>:
    80006cac:	ff010113          	addi	sp,sp,-16
    80006cb0:	00813423          	sd	s0,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	00813403          	ld	s0,8(sp)
    80006cbc:	01010113          	addi	sp,sp,16
    80006cc0:	00008067          	ret

0000000080006cc4 <usertrapret>:
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00813423          	sd	s0,8(sp)
    80006ccc:	01010413          	addi	s0,sp,16
    80006cd0:	00813403          	ld	s0,8(sp)
    80006cd4:	01010113          	addi	sp,sp,16
    80006cd8:	00008067          	ret

0000000080006cdc <kerneltrap>:
    80006cdc:	fe010113          	addi	sp,sp,-32
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00113c23          	sd	ra,24(sp)
    80006ce8:	00913423          	sd	s1,8(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	142025f3          	csrr	a1,scause
    80006cf4:	100027f3          	csrr	a5,sstatus
    80006cf8:	0027f793          	andi	a5,a5,2
    80006cfc:	10079c63          	bnez	a5,80006e14 <kerneltrap+0x138>
    80006d00:	142027f3          	csrr	a5,scause
    80006d04:	0207ce63          	bltz	a5,80006d40 <kerneltrap+0x64>
    80006d08:	00003517          	auipc	a0,0x3
    80006d0c:	bb850513          	addi	a0,a0,-1096 # 800098c0 <CONSOLE_STATUS+0x8b0>
    80006d10:	00001097          	auipc	ra,0x1
    80006d14:	888080e7          	jalr	-1912(ra) # 80007598 <__printf>
    80006d18:	141025f3          	csrr	a1,sepc
    80006d1c:	14302673          	csrr	a2,stval
    80006d20:	00003517          	auipc	a0,0x3
    80006d24:	bb050513          	addi	a0,a0,-1104 # 800098d0 <CONSOLE_STATUS+0x8c0>
    80006d28:	00001097          	auipc	ra,0x1
    80006d2c:	870080e7          	jalr	-1936(ra) # 80007598 <__printf>
    80006d30:	00003517          	auipc	a0,0x3
    80006d34:	bb850513          	addi	a0,a0,-1096 # 800098e8 <CONSOLE_STATUS+0x8d8>
    80006d38:	00001097          	auipc	ra,0x1
    80006d3c:	804080e7          	jalr	-2044(ra) # 8000753c <panic>
    80006d40:	0ff7f713          	andi	a4,a5,255
    80006d44:	00900693          	li	a3,9
    80006d48:	04d70063          	beq	a4,a3,80006d88 <kerneltrap+0xac>
    80006d4c:	fff00713          	li	a4,-1
    80006d50:	03f71713          	slli	a4,a4,0x3f
    80006d54:	00170713          	addi	a4,a4,1
    80006d58:	fae798e3          	bne	a5,a4,80006d08 <kerneltrap+0x2c>
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	e00080e7          	jalr	-512(ra) # 80006b5c <cpuid>
    80006d64:	06050663          	beqz	a0,80006dd0 <kerneltrap+0xf4>
    80006d68:	144027f3          	csrr	a5,sip
    80006d6c:	ffd7f793          	andi	a5,a5,-3
    80006d70:	14479073          	csrw	sip,a5
    80006d74:	01813083          	ld	ra,24(sp)
    80006d78:	01013403          	ld	s0,16(sp)
    80006d7c:	00813483          	ld	s1,8(sp)
    80006d80:	02010113          	addi	sp,sp,32
    80006d84:	00008067          	ret
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	3cc080e7          	jalr	972(ra) # 80007154 <plic_claim>
    80006d90:	00a00793          	li	a5,10
    80006d94:	00050493          	mv	s1,a0
    80006d98:	06f50863          	beq	a0,a5,80006e08 <kerneltrap+0x12c>
    80006d9c:	fc050ce3          	beqz	a0,80006d74 <kerneltrap+0x98>
    80006da0:	00050593          	mv	a1,a0
    80006da4:	00003517          	auipc	a0,0x3
    80006da8:	afc50513          	addi	a0,a0,-1284 # 800098a0 <CONSOLE_STATUS+0x890>
    80006dac:	00000097          	auipc	ra,0x0
    80006db0:	7ec080e7          	jalr	2028(ra) # 80007598 <__printf>
    80006db4:	01013403          	ld	s0,16(sp)
    80006db8:	01813083          	ld	ra,24(sp)
    80006dbc:	00048513          	mv	a0,s1
    80006dc0:	00813483          	ld	s1,8(sp)
    80006dc4:	02010113          	addi	sp,sp,32
    80006dc8:	00000317          	auipc	t1,0x0
    80006dcc:	3c430067          	jr	964(t1) # 8000718c <plic_complete>
    80006dd0:	00006517          	auipc	a0,0x6
    80006dd4:	07050513          	addi	a0,a0,112 # 8000ce40 <tickslock>
    80006dd8:	00001097          	auipc	ra,0x1
    80006ddc:	494080e7          	jalr	1172(ra) # 8000826c <acquire>
    80006de0:	00005717          	auipc	a4,0x5
    80006de4:	ed470713          	addi	a4,a4,-300 # 8000bcb4 <ticks>
    80006de8:	00072783          	lw	a5,0(a4)
    80006dec:	00006517          	auipc	a0,0x6
    80006df0:	05450513          	addi	a0,a0,84 # 8000ce40 <tickslock>
    80006df4:	0017879b          	addiw	a5,a5,1
    80006df8:	00f72023          	sw	a5,0(a4)
    80006dfc:	00001097          	auipc	ra,0x1
    80006e00:	53c080e7          	jalr	1340(ra) # 80008338 <release>
    80006e04:	f65ff06f          	j	80006d68 <kerneltrap+0x8c>
    80006e08:	00001097          	auipc	ra,0x1
    80006e0c:	098080e7          	jalr	152(ra) # 80007ea0 <uartintr>
    80006e10:	fa5ff06f          	j	80006db4 <kerneltrap+0xd8>
    80006e14:	00003517          	auipc	a0,0x3
    80006e18:	a6c50513          	addi	a0,a0,-1428 # 80009880 <CONSOLE_STATUS+0x870>
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	720080e7          	jalr	1824(ra) # 8000753c <panic>

0000000080006e24 <clockintr>:
    80006e24:	fe010113          	addi	sp,sp,-32
    80006e28:	00813823          	sd	s0,16(sp)
    80006e2c:	00913423          	sd	s1,8(sp)
    80006e30:	00113c23          	sd	ra,24(sp)
    80006e34:	02010413          	addi	s0,sp,32
    80006e38:	00006497          	auipc	s1,0x6
    80006e3c:	00848493          	addi	s1,s1,8 # 8000ce40 <tickslock>
    80006e40:	00048513          	mv	a0,s1
    80006e44:	00001097          	auipc	ra,0x1
    80006e48:	428080e7          	jalr	1064(ra) # 8000826c <acquire>
    80006e4c:	00005717          	auipc	a4,0x5
    80006e50:	e6870713          	addi	a4,a4,-408 # 8000bcb4 <ticks>
    80006e54:	00072783          	lw	a5,0(a4)
    80006e58:	01013403          	ld	s0,16(sp)
    80006e5c:	01813083          	ld	ra,24(sp)
    80006e60:	00048513          	mv	a0,s1
    80006e64:	0017879b          	addiw	a5,a5,1
    80006e68:	00813483          	ld	s1,8(sp)
    80006e6c:	00f72023          	sw	a5,0(a4)
    80006e70:	02010113          	addi	sp,sp,32
    80006e74:	00001317          	auipc	t1,0x1
    80006e78:	4c430067          	jr	1220(t1) # 80008338 <release>

0000000080006e7c <devintr>:
    80006e7c:	142027f3          	csrr	a5,scause
    80006e80:	00000513          	li	a0,0
    80006e84:	0007c463          	bltz	a5,80006e8c <devintr+0x10>
    80006e88:	00008067          	ret
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00113c23          	sd	ra,24(sp)
    80006e98:	00913423          	sd	s1,8(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	0ff7f713          	andi	a4,a5,255
    80006ea4:	00900693          	li	a3,9
    80006ea8:	04d70c63          	beq	a4,a3,80006f00 <devintr+0x84>
    80006eac:	fff00713          	li	a4,-1
    80006eb0:	03f71713          	slli	a4,a4,0x3f
    80006eb4:	00170713          	addi	a4,a4,1
    80006eb8:	00e78c63          	beq	a5,a4,80006ed0 <devintr+0x54>
    80006ebc:	01813083          	ld	ra,24(sp)
    80006ec0:	01013403          	ld	s0,16(sp)
    80006ec4:	00813483          	ld	s1,8(sp)
    80006ec8:	02010113          	addi	sp,sp,32
    80006ecc:	00008067          	ret
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	c8c080e7          	jalr	-884(ra) # 80006b5c <cpuid>
    80006ed8:	06050663          	beqz	a0,80006f44 <devintr+0xc8>
    80006edc:	144027f3          	csrr	a5,sip
    80006ee0:	ffd7f793          	andi	a5,a5,-3
    80006ee4:	14479073          	csrw	sip,a5
    80006ee8:	01813083          	ld	ra,24(sp)
    80006eec:	01013403          	ld	s0,16(sp)
    80006ef0:	00813483          	ld	s1,8(sp)
    80006ef4:	00200513          	li	a0,2
    80006ef8:	02010113          	addi	sp,sp,32
    80006efc:	00008067          	ret
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	254080e7          	jalr	596(ra) # 80007154 <plic_claim>
    80006f08:	00a00793          	li	a5,10
    80006f0c:	00050493          	mv	s1,a0
    80006f10:	06f50663          	beq	a0,a5,80006f7c <devintr+0x100>
    80006f14:	00100513          	li	a0,1
    80006f18:	fa0482e3          	beqz	s1,80006ebc <devintr+0x40>
    80006f1c:	00048593          	mv	a1,s1
    80006f20:	00003517          	auipc	a0,0x3
    80006f24:	98050513          	addi	a0,a0,-1664 # 800098a0 <CONSOLE_STATUS+0x890>
    80006f28:	00000097          	auipc	ra,0x0
    80006f2c:	670080e7          	jalr	1648(ra) # 80007598 <__printf>
    80006f30:	00048513          	mv	a0,s1
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	258080e7          	jalr	600(ra) # 8000718c <plic_complete>
    80006f3c:	00100513          	li	a0,1
    80006f40:	f7dff06f          	j	80006ebc <devintr+0x40>
    80006f44:	00006517          	auipc	a0,0x6
    80006f48:	efc50513          	addi	a0,a0,-260 # 8000ce40 <tickslock>
    80006f4c:	00001097          	auipc	ra,0x1
    80006f50:	320080e7          	jalr	800(ra) # 8000826c <acquire>
    80006f54:	00005717          	auipc	a4,0x5
    80006f58:	d6070713          	addi	a4,a4,-672 # 8000bcb4 <ticks>
    80006f5c:	00072783          	lw	a5,0(a4)
    80006f60:	00006517          	auipc	a0,0x6
    80006f64:	ee050513          	addi	a0,a0,-288 # 8000ce40 <tickslock>
    80006f68:	0017879b          	addiw	a5,a5,1
    80006f6c:	00f72023          	sw	a5,0(a4)
    80006f70:	00001097          	auipc	ra,0x1
    80006f74:	3c8080e7          	jalr	968(ra) # 80008338 <release>
    80006f78:	f65ff06f          	j	80006edc <devintr+0x60>
    80006f7c:	00001097          	auipc	ra,0x1
    80006f80:	f24080e7          	jalr	-220(ra) # 80007ea0 <uartintr>
    80006f84:	fadff06f          	j	80006f30 <devintr+0xb4>
	...

0000000080006f90 <kernelvec>:
    80006f90:	f0010113          	addi	sp,sp,-256
    80006f94:	00113023          	sd	ra,0(sp)
    80006f98:	00213423          	sd	sp,8(sp)
    80006f9c:	00313823          	sd	gp,16(sp)
    80006fa0:	00413c23          	sd	tp,24(sp)
    80006fa4:	02513023          	sd	t0,32(sp)
    80006fa8:	02613423          	sd	t1,40(sp)
    80006fac:	02713823          	sd	t2,48(sp)
    80006fb0:	02813c23          	sd	s0,56(sp)
    80006fb4:	04913023          	sd	s1,64(sp)
    80006fb8:	04a13423          	sd	a0,72(sp)
    80006fbc:	04b13823          	sd	a1,80(sp)
    80006fc0:	04c13c23          	sd	a2,88(sp)
    80006fc4:	06d13023          	sd	a3,96(sp)
    80006fc8:	06e13423          	sd	a4,104(sp)
    80006fcc:	06f13823          	sd	a5,112(sp)
    80006fd0:	07013c23          	sd	a6,120(sp)
    80006fd4:	09113023          	sd	a7,128(sp)
    80006fd8:	09213423          	sd	s2,136(sp)
    80006fdc:	09313823          	sd	s3,144(sp)
    80006fe0:	09413c23          	sd	s4,152(sp)
    80006fe4:	0b513023          	sd	s5,160(sp)
    80006fe8:	0b613423          	sd	s6,168(sp)
    80006fec:	0b713823          	sd	s7,176(sp)
    80006ff0:	0b813c23          	sd	s8,184(sp)
    80006ff4:	0d913023          	sd	s9,192(sp)
    80006ff8:	0da13423          	sd	s10,200(sp)
    80006ffc:	0db13823          	sd	s11,208(sp)
    80007000:	0dc13c23          	sd	t3,216(sp)
    80007004:	0fd13023          	sd	t4,224(sp)
    80007008:	0fe13423          	sd	t5,232(sp)
    8000700c:	0ff13823          	sd	t6,240(sp)
    80007010:	ccdff0ef          	jal	ra,80006cdc <kerneltrap>
    80007014:	00013083          	ld	ra,0(sp)
    80007018:	00813103          	ld	sp,8(sp)
    8000701c:	01013183          	ld	gp,16(sp)
    80007020:	02013283          	ld	t0,32(sp)
    80007024:	02813303          	ld	t1,40(sp)
    80007028:	03013383          	ld	t2,48(sp)
    8000702c:	03813403          	ld	s0,56(sp)
    80007030:	04013483          	ld	s1,64(sp)
    80007034:	04813503          	ld	a0,72(sp)
    80007038:	05013583          	ld	a1,80(sp)
    8000703c:	05813603          	ld	a2,88(sp)
    80007040:	06013683          	ld	a3,96(sp)
    80007044:	06813703          	ld	a4,104(sp)
    80007048:	07013783          	ld	a5,112(sp)
    8000704c:	07813803          	ld	a6,120(sp)
    80007050:	08013883          	ld	a7,128(sp)
    80007054:	08813903          	ld	s2,136(sp)
    80007058:	09013983          	ld	s3,144(sp)
    8000705c:	09813a03          	ld	s4,152(sp)
    80007060:	0a013a83          	ld	s5,160(sp)
    80007064:	0a813b03          	ld	s6,168(sp)
    80007068:	0b013b83          	ld	s7,176(sp)
    8000706c:	0b813c03          	ld	s8,184(sp)
    80007070:	0c013c83          	ld	s9,192(sp)
    80007074:	0c813d03          	ld	s10,200(sp)
    80007078:	0d013d83          	ld	s11,208(sp)
    8000707c:	0d813e03          	ld	t3,216(sp)
    80007080:	0e013e83          	ld	t4,224(sp)
    80007084:	0e813f03          	ld	t5,232(sp)
    80007088:	0f013f83          	ld	t6,240(sp)
    8000708c:	10010113          	addi	sp,sp,256
    80007090:	10200073          	sret
    80007094:	00000013          	nop
    80007098:	00000013          	nop
    8000709c:	00000013          	nop

00000000800070a0 <timervec>:
    800070a0:	34051573          	csrrw	a0,mscratch,a0
    800070a4:	00b53023          	sd	a1,0(a0)
    800070a8:	00c53423          	sd	a2,8(a0)
    800070ac:	00d53823          	sd	a3,16(a0)
    800070b0:	01853583          	ld	a1,24(a0)
    800070b4:	02053603          	ld	a2,32(a0)
    800070b8:	0005b683          	ld	a3,0(a1)
    800070bc:	00c686b3          	add	a3,a3,a2
    800070c0:	00d5b023          	sd	a3,0(a1)
    800070c4:	00200593          	li	a1,2
    800070c8:	14459073          	csrw	sip,a1
    800070cc:	01053683          	ld	a3,16(a0)
    800070d0:	00853603          	ld	a2,8(a0)
    800070d4:	00053583          	ld	a1,0(a0)
    800070d8:	34051573          	csrrw	a0,mscratch,a0
    800070dc:	30200073          	mret

00000000800070e0 <plicinit>:
    800070e0:	ff010113          	addi	sp,sp,-16
    800070e4:	00813423          	sd	s0,8(sp)
    800070e8:	01010413          	addi	s0,sp,16
    800070ec:	00813403          	ld	s0,8(sp)
    800070f0:	0c0007b7          	lui	a5,0xc000
    800070f4:	00100713          	li	a4,1
    800070f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800070fc:	00e7a223          	sw	a4,4(a5)
    80007100:	01010113          	addi	sp,sp,16
    80007104:	00008067          	ret

0000000080007108 <plicinithart>:
    80007108:	ff010113          	addi	sp,sp,-16
    8000710c:	00813023          	sd	s0,0(sp)
    80007110:	00113423          	sd	ra,8(sp)
    80007114:	01010413          	addi	s0,sp,16
    80007118:	00000097          	auipc	ra,0x0
    8000711c:	a44080e7          	jalr	-1468(ra) # 80006b5c <cpuid>
    80007120:	0085171b          	slliw	a4,a0,0x8
    80007124:	0c0027b7          	lui	a5,0xc002
    80007128:	00e787b3          	add	a5,a5,a4
    8000712c:	40200713          	li	a4,1026
    80007130:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007134:	00813083          	ld	ra,8(sp)
    80007138:	00013403          	ld	s0,0(sp)
    8000713c:	00d5151b          	slliw	a0,a0,0xd
    80007140:	0c2017b7          	lui	a5,0xc201
    80007144:	00a78533          	add	a0,a5,a0
    80007148:	00052023          	sw	zero,0(a0)
    8000714c:	01010113          	addi	sp,sp,16
    80007150:	00008067          	ret

0000000080007154 <plic_claim>:
    80007154:	ff010113          	addi	sp,sp,-16
    80007158:	00813023          	sd	s0,0(sp)
    8000715c:	00113423          	sd	ra,8(sp)
    80007160:	01010413          	addi	s0,sp,16
    80007164:	00000097          	auipc	ra,0x0
    80007168:	9f8080e7          	jalr	-1544(ra) # 80006b5c <cpuid>
    8000716c:	00813083          	ld	ra,8(sp)
    80007170:	00013403          	ld	s0,0(sp)
    80007174:	00d5151b          	slliw	a0,a0,0xd
    80007178:	0c2017b7          	lui	a5,0xc201
    8000717c:	00a78533          	add	a0,a5,a0
    80007180:	00452503          	lw	a0,4(a0)
    80007184:	01010113          	addi	sp,sp,16
    80007188:	00008067          	ret

000000008000718c <plic_complete>:
    8000718c:	fe010113          	addi	sp,sp,-32
    80007190:	00813823          	sd	s0,16(sp)
    80007194:	00913423          	sd	s1,8(sp)
    80007198:	00113c23          	sd	ra,24(sp)
    8000719c:	02010413          	addi	s0,sp,32
    800071a0:	00050493          	mv	s1,a0
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	9b8080e7          	jalr	-1608(ra) # 80006b5c <cpuid>
    800071ac:	01813083          	ld	ra,24(sp)
    800071b0:	01013403          	ld	s0,16(sp)
    800071b4:	00d5179b          	slliw	a5,a0,0xd
    800071b8:	0c201737          	lui	a4,0xc201
    800071bc:	00f707b3          	add	a5,a4,a5
    800071c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800071c4:	00813483          	ld	s1,8(sp)
    800071c8:	02010113          	addi	sp,sp,32
    800071cc:	00008067          	ret

00000000800071d0 <consolewrite>:
    800071d0:	fb010113          	addi	sp,sp,-80
    800071d4:	04813023          	sd	s0,64(sp)
    800071d8:	04113423          	sd	ra,72(sp)
    800071dc:	02913c23          	sd	s1,56(sp)
    800071e0:	03213823          	sd	s2,48(sp)
    800071e4:	03313423          	sd	s3,40(sp)
    800071e8:	03413023          	sd	s4,32(sp)
    800071ec:	01513c23          	sd	s5,24(sp)
    800071f0:	05010413          	addi	s0,sp,80
    800071f4:	06c05c63          	blez	a2,8000726c <consolewrite+0x9c>
    800071f8:	00060993          	mv	s3,a2
    800071fc:	00050a13          	mv	s4,a0
    80007200:	00058493          	mv	s1,a1
    80007204:	00000913          	li	s2,0
    80007208:	fff00a93          	li	s5,-1
    8000720c:	01c0006f          	j	80007228 <consolewrite+0x58>
    80007210:	fbf44503          	lbu	a0,-65(s0)
    80007214:	0019091b          	addiw	s2,s2,1
    80007218:	00148493          	addi	s1,s1,1
    8000721c:	00001097          	auipc	ra,0x1
    80007220:	a9c080e7          	jalr	-1380(ra) # 80007cb8 <uartputc>
    80007224:	03298063          	beq	s3,s2,80007244 <consolewrite+0x74>
    80007228:	00048613          	mv	a2,s1
    8000722c:	00100693          	li	a3,1
    80007230:	000a0593          	mv	a1,s4
    80007234:	fbf40513          	addi	a0,s0,-65
    80007238:	00000097          	auipc	ra,0x0
    8000723c:	9dc080e7          	jalr	-1572(ra) # 80006c14 <either_copyin>
    80007240:	fd5518e3          	bne	a0,s5,80007210 <consolewrite+0x40>
    80007244:	04813083          	ld	ra,72(sp)
    80007248:	04013403          	ld	s0,64(sp)
    8000724c:	03813483          	ld	s1,56(sp)
    80007250:	02813983          	ld	s3,40(sp)
    80007254:	02013a03          	ld	s4,32(sp)
    80007258:	01813a83          	ld	s5,24(sp)
    8000725c:	00090513          	mv	a0,s2
    80007260:	03013903          	ld	s2,48(sp)
    80007264:	05010113          	addi	sp,sp,80
    80007268:	00008067          	ret
    8000726c:	00000913          	li	s2,0
    80007270:	fd5ff06f          	j	80007244 <consolewrite+0x74>

0000000080007274 <consoleread>:
    80007274:	f9010113          	addi	sp,sp,-112
    80007278:	06813023          	sd	s0,96(sp)
    8000727c:	04913c23          	sd	s1,88(sp)
    80007280:	05213823          	sd	s2,80(sp)
    80007284:	05313423          	sd	s3,72(sp)
    80007288:	05413023          	sd	s4,64(sp)
    8000728c:	03513c23          	sd	s5,56(sp)
    80007290:	03613823          	sd	s6,48(sp)
    80007294:	03713423          	sd	s7,40(sp)
    80007298:	03813023          	sd	s8,32(sp)
    8000729c:	06113423          	sd	ra,104(sp)
    800072a0:	01913c23          	sd	s9,24(sp)
    800072a4:	07010413          	addi	s0,sp,112
    800072a8:	00060b93          	mv	s7,a2
    800072ac:	00050913          	mv	s2,a0
    800072b0:	00058c13          	mv	s8,a1
    800072b4:	00060b1b          	sext.w	s6,a2
    800072b8:	00006497          	auipc	s1,0x6
    800072bc:	bb048493          	addi	s1,s1,-1104 # 8000ce68 <cons>
    800072c0:	00400993          	li	s3,4
    800072c4:	fff00a13          	li	s4,-1
    800072c8:	00a00a93          	li	s5,10
    800072cc:	05705e63          	blez	s7,80007328 <consoleread+0xb4>
    800072d0:	09c4a703          	lw	a4,156(s1)
    800072d4:	0984a783          	lw	a5,152(s1)
    800072d8:	0007071b          	sext.w	a4,a4
    800072dc:	08e78463          	beq	a5,a4,80007364 <consoleread+0xf0>
    800072e0:	07f7f713          	andi	a4,a5,127
    800072e4:	00e48733          	add	a4,s1,a4
    800072e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800072ec:	0017869b          	addiw	a3,a5,1
    800072f0:	08d4ac23          	sw	a3,152(s1)
    800072f4:	00070c9b          	sext.w	s9,a4
    800072f8:	0b370663          	beq	a4,s3,800073a4 <consoleread+0x130>
    800072fc:	00100693          	li	a3,1
    80007300:	f9f40613          	addi	a2,s0,-97
    80007304:	000c0593          	mv	a1,s8
    80007308:	00090513          	mv	a0,s2
    8000730c:	f8e40fa3          	sb	a4,-97(s0)
    80007310:	00000097          	auipc	ra,0x0
    80007314:	8b8080e7          	jalr	-1864(ra) # 80006bc8 <either_copyout>
    80007318:	01450863          	beq	a0,s4,80007328 <consoleread+0xb4>
    8000731c:	001c0c13          	addi	s8,s8,1
    80007320:	fffb8b9b          	addiw	s7,s7,-1
    80007324:	fb5c94e3          	bne	s9,s5,800072cc <consoleread+0x58>
    80007328:	000b851b          	sext.w	a0,s7
    8000732c:	06813083          	ld	ra,104(sp)
    80007330:	06013403          	ld	s0,96(sp)
    80007334:	05813483          	ld	s1,88(sp)
    80007338:	05013903          	ld	s2,80(sp)
    8000733c:	04813983          	ld	s3,72(sp)
    80007340:	04013a03          	ld	s4,64(sp)
    80007344:	03813a83          	ld	s5,56(sp)
    80007348:	02813b83          	ld	s7,40(sp)
    8000734c:	02013c03          	ld	s8,32(sp)
    80007350:	01813c83          	ld	s9,24(sp)
    80007354:	40ab053b          	subw	a0,s6,a0
    80007358:	03013b03          	ld	s6,48(sp)
    8000735c:	07010113          	addi	sp,sp,112
    80007360:	00008067          	ret
    80007364:	00001097          	auipc	ra,0x1
    80007368:	1d8080e7          	jalr	472(ra) # 8000853c <push_on>
    8000736c:	0984a703          	lw	a4,152(s1)
    80007370:	09c4a783          	lw	a5,156(s1)
    80007374:	0007879b          	sext.w	a5,a5
    80007378:	fef70ce3          	beq	a4,a5,80007370 <consoleread+0xfc>
    8000737c:	00001097          	auipc	ra,0x1
    80007380:	234080e7          	jalr	564(ra) # 800085b0 <pop_on>
    80007384:	0984a783          	lw	a5,152(s1)
    80007388:	07f7f713          	andi	a4,a5,127
    8000738c:	00e48733          	add	a4,s1,a4
    80007390:	01874703          	lbu	a4,24(a4)
    80007394:	0017869b          	addiw	a3,a5,1
    80007398:	08d4ac23          	sw	a3,152(s1)
    8000739c:	00070c9b          	sext.w	s9,a4
    800073a0:	f5371ee3          	bne	a4,s3,800072fc <consoleread+0x88>
    800073a4:	000b851b          	sext.w	a0,s7
    800073a8:	f96bf2e3          	bgeu	s7,s6,8000732c <consoleread+0xb8>
    800073ac:	08f4ac23          	sw	a5,152(s1)
    800073b0:	f7dff06f          	j	8000732c <consoleread+0xb8>

00000000800073b4 <consputc>:
    800073b4:	10000793          	li	a5,256
    800073b8:	00f50663          	beq	a0,a5,800073c4 <consputc+0x10>
    800073bc:	00001317          	auipc	t1,0x1
    800073c0:	9f430067          	jr	-1548(t1) # 80007db0 <uartputc_sync>
    800073c4:	ff010113          	addi	sp,sp,-16
    800073c8:	00113423          	sd	ra,8(sp)
    800073cc:	00813023          	sd	s0,0(sp)
    800073d0:	01010413          	addi	s0,sp,16
    800073d4:	00800513          	li	a0,8
    800073d8:	00001097          	auipc	ra,0x1
    800073dc:	9d8080e7          	jalr	-1576(ra) # 80007db0 <uartputc_sync>
    800073e0:	02000513          	li	a0,32
    800073e4:	00001097          	auipc	ra,0x1
    800073e8:	9cc080e7          	jalr	-1588(ra) # 80007db0 <uartputc_sync>
    800073ec:	00013403          	ld	s0,0(sp)
    800073f0:	00813083          	ld	ra,8(sp)
    800073f4:	00800513          	li	a0,8
    800073f8:	01010113          	addi	sp,sp,16
    800073fc:	00001317          	auipc	t1,0x1
    80007400:	9b430067          	jr	-1612(t1) # 80007db0 <uartputc_sync>

0000000080007404 <consoleintr>:
    80007404:	fe010113          	addi	sp,sp,-32
    80007408:	00813823          	sd	s0,16(sp)
    8000740c:	00913423          	sd	s1,8(sp)
    80007410:	01213023          	sd	s2,0(sp)
    80007414:	00113c23          	sd	ra,24(sp)
    80007418:	02010413          	addi	s0,sp,32
    8000741c:	00006917          	auipc	s2,0x6
    80007420:	a4c90913          	addi	s2,s2,-1460 # 8000ce68 <cons>
    80007424:	00050493          	mv	s1,a0
    80007428:	00090513          	mv	a0,s2
    8000742c:	00001097          	auipc	ra,0x1
    80007430:	e40080e7          	jalr	-448(ra) # 8000826c <acquire>
    80007434:	02048c63          	beqz	s1,8000746c <consoleintr+0x68>
    80007438:	0a092783          	lw	a5,160(s2)
    8000743c:	09892703          	lw	a4,152(s2)
    80007440:	07f00693          	li	a3,127
    80007444:	40e7873b          	subw	a4,a5,a4
    80007448:	02e6e263          	bltu	a3,a4,8000746c <consoleintr+0x68>
    8000744c:	00d00713          	li	a4,13
    80007450:	04e48063          	beq	s1,a4,80007490 <consoleintr+0x8c>
    80007454:	07f7f713          	andi	a4,a5,127
    80007458:	00e90733          	add	a4,s2,a4
    8000745c:	0017879b          	addiw	a5,a5,1
    80007460:	0af92023          	sw	a5,160(s2)
    80007464:	00970c23          	sb	s1,24(a4)
    80007468:	08f92e23          	sw	a5,156(s2)
    8000746c:	01013403          	ld	s0,16(sp)
    80007470:	01813083          	ld	ra,24(sp)
    80007474:	00813483          	ld	s1,8(sp)
    80007478:	00013903          	ld	s2,0(sp)
    8000747c:	00006517          	auipc	a0,0x6
    80007480:	9ec50513          	addi	a0,a0,-1556 # 8000ce68 <cons>
    80007484:	02010113          	addi	sp,sp,32
    80007488:	00001317          	auipc	t1,0x1
    8000748c:	eb030067          	jr	-336(t1) # 80008338 <release>
    80007490:	00a00493          	li	s1,10
    80007494:	fc1ff06f          	j	80007454 <consoleintr+0x50>

0000000080007498 <consoleinit>:
    80007498:	fe010113          	addi	sp,sp,-32
    8000749c:	00113c23          	sd	ra,24(sp)
    800074a0:	00813823          	sd	s0,16(sp)
    800074a4:	00913423          	sd	s1,8(sp)
    800074a8:	02010413          	addi	s0,sp,32
    800074ac:	00006497          	auipc	s1,0x6
    800074b0:	9bc48493          	addi	s1,s1,-1604 # 8000ce68 <cons>
    800074b4:	00048513          	mv	a0,s1
    800074b8:	00002597          	auipc	a1,0x2
    800074bc:	44058593          	addi	a1,a1,1088 # 800098f8 <CONSOLE_STATUS+0x8e8>
    800074c0:	00001097          	auipc	ra,0x1
    800074c4:	d88080e7          	jalr	-632(ra) # 80008248 <initlock>
    800074c8:	00000097          	auipc	ra,0x0
    800074cc:	7ac080e7          	jalr	1964(ra) # 80007c74 <uartinit>
    800074d0:	01813083          	ld	ra,24(sp)
    800074d4:	01013403          	ld	s0,16(sp)
    800074d8:	00000797          	auipc	a5,0x0
    800074dc:	d9c78793          	addi	a5,a5,-612 # 80007274 <consoleread>
    800074e0:	0af4bc23          	sd	a5,184(s1)
    800074e4:	00000797          	auipc	a5,0x0
    800074e8:	cec78793          	addi	a5,a5,-788 # 800071d0 <consolewrite>
    800074ec:	0cf4b023          	sd	a5,192(s1)
    800074f0:	00813483          	ld	s1,8(sp)
    800074f4:	02010113          	addi	sp,sp,32
    800074f8:	00008067          	ret

00000000800074fc <console_read>:
    800074fc:	ff010113          	addi	sp,sp,-16
    80007500:	00813423          	sd	s0,8(sp)
    80007504:	01010413          	addi	s0,sp,16
    80007508:	00813403          	ld	s0,8(sp)
    8000750c:	00006317          	auipc	t1,0x6
    80007510:	a1433303          	ld	t1,-1516(t1) # 8000cf20 <devsw+0x10>
    80007514:	01010113          	addi	sp,sp,16
    80007518:	00030067          	jr	t1

000000008000751c <console_write>:
    8000751c:	ff010113          	addi	sp,sp,-16
    80007520:	00813423          	sd	s0,8(sp)
    80007524:	01010413          	addi	s0,sp,16
    80007528:	00813403          	ld	s0,8(sp)
    8000752c:	00006317          	auipc	t1,0x6
    80007530:	9fc33303          	ld	t1,-1540(t1) # 8000cf28 <devsw+0x18>
    80007534:	01010113          	addi	sp,sp,16
    80007538:	00030067          	jr	t1

000000008000753c <panic>:
    8000753c:	fe010113          	addi	sp,sp,-32
    80007540:	00113c23          	sd	ra,24(sp)
    80007544:	00813823          	sd	s0,16(sp)
    80007548:	00913423          	sd	s1,8(sp)
    8000754c:	02010413          	addi	s0,sp,32
    80007550:	00050493          	mv	s1,a0
    80007554:	00002517          	auipc	a0,0x2
    80007558:	3ac50513          	addi	a0,a0,940 # 80009900 <CONSOLE_STATUS+0x8f0>
    8000755c:	00006797          	auipc	a5,0x6
    80007560:	a607a623          	sw	zero,-1428(a5) # 8000cfc8 <pr+0x18>
    80007564:	00000097          	auipc	ra,0x0
    80007568:	034080e7          	jalr	52(ra) # 80007598 <__printf>
    8000756c:	00048513          	mv	a0,s1
    80007570:	00000097          	auipc	ra,0x0
    80007574:	028080e7          	jalr	40(ra) # 80007598 <__printf>
    80007578:	00002517          	auipc	a0,0x2
    8000757c:	22050513          	addi	a0,a0,544 # 80009798 <CONSOLE_STATUS+0x788>
    80007580:	00000097          	auipc	ra,0x0
    80007584:	018080e7          	jalr	24(ra) # 80007598 <__printf>
    80007588:	00100793          	li	a5,1
    8000758c:	00004717          	auipc	a4,0x4
    80007590:	72f72623          	sw	a5,1836(a4) # 8000bcb8 <panicked>
    80007594:	0000006f          	j	80007594 <panic+0x58>

0000000080007598 <__printf>:
    80007598:	f3010113          	addi	sp,sp,-208
    8000759c:	08813023          	sd	s0,128(sp)
    800075a0:	07313423          	sd	s3,104(sp)
    800075a4:	09010413          	addi	s0,sp,144
    800075a8:	05813023          	sd	s8,64(sp)
    800075ac:	08113423          	sd	ra,136(sp)
    800075b0:	06913c23          	sd	s1,120(sp)
    800075b4:	07213823          	sd	s2,112(sp)
    800075b8:	07413023          	sd	s4,96(sp)
    800075bc:	05513c23          	sd	s5,88(sp)
    800075c0:	05613823          	sd	s6,80(sp)
    800075c4:	05713423          	sd	s7,72(sp)
    800075c8:	03913c23          	sd	s9,56(sp)
    800075cc:	03a13823          	sd	s10,48(sp)
    800075d0:	03b13423          	sd	s11,40(sp)
    800075d4:	00006317          	auipc	t1,0x6
    800075d8:	9dc30313          	addi	t1,t1,-1572 # 8000cfb0 <pr>
    800075dc:	01832c03          	lw	s8,24(t1)
    800075e0:	00b43423          	sd	a1,8(s0)
    800075e4:	00c43823          	sd	a2,16(s0)
    800075e8:	00d43c23          	sd	a3,24(s0)
    800075ec:	02e43023          	sd	a4,32(s0)
    800075f0:	02f43423          	sd	a5,40(s0)
    800075f4:	03043823          	sd	a6,48(s0)
    800075f8:	03143c23          	sd	a7,56(s0)
    800075fc:	00050993          	mv	s3,a0
    80007600:	4a0c1663          	bnez	s8,80007aac <__printf+0x514>
    80007604:	60098c63          	beqz	s3,80007c1c <__printf+0x684>
    80007608:	0009c503          	lbu	a0,0(s3)
    8000760c:	00840793          	addi	a5,s0,8
    80007610:	f6f43c23          	sd	a5,-136(s0)
    80007614:	00000493          	li	s1,0
    80007618:	22050063          	beqz	a0,80007838 <__printf+0x2a0>
    8000761c:	00002a37          	lui	s4,0x2
    80007620:	00018ab7          	lui	s5,0x18
    80007624:	000f4b37          	lui	s6,0xf4
    80007628:	00989bb7          	lui	s7,0x989
    8000762c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007630:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007634:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007638:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000763c:	00148c9b          	addiw	s9,s1,1
    80007640:	02500793          	li	a5,37
    80007644:	01998933          	add	s2,s3,s9
    80007648:	38f51263          	bne	a0,a5,800079cc <__printf+0x434>
    8000764c:	00094783          	lbu	a5,0(s2)
    80007650:	00078c9b          	sext.w	s9,a5
    80007654:	1e078263          	beqz	a5,80007838 <__printf+0x2a0>
    80007658:	0024849b          	addiw	s1,s1,2
    8000765c:	07000713          	li	a4,112
    80007660:	00998933          	add	s2,s3,s1
    80007664:	38e78a63          	beq	a5,a4,800079f8 <__printf+0x460>
    80007668:	20f76863          	bltu	a4,a5,80007878 <__printf+0x2e0>
    8000766c:	42a78863          	beq	a5,a0,80007a9c <__printf+0x504>
    80007670:	06400713          	li	a4,100
    80007674:	40e79663          	bne	a5,a4,80007a80 <__printf+0x4e8>
    80007678:	f7843783          	ld	a5,-136(s0)
    8000767c:	0007a603          	lw	a2,0(a5)
    80007680:	00878793          	addi	a5,a5,8
    80007684:	f6f43c23          	sd	a5,-136(s0)
    80007688:	42064a63          	bltz	a2,80007abc <__printf+0x524>
    8000768c:	00a00713          	li	a4,10
    80007690:	02e677bb          	remuw	a5,a2,a4
    80007694:	00002d97          	auipc	s11,0x2
    80007698:	294d8d93          	addi	s11,s11,660 # 80009928 <digits>
    8000769c:	00900593          	li	a1,9
    800076a0:	0006051b          	sext.w	a0,a2
    800076a4:	00000c93          	li	s9,0
    800076a8:	02079793          	slli	a5,a5,0x20
    800076ac:	0207d793          	srli	a5,a5,0x20
    800076b0:	00fd87b3          	add	a5,s11,a5
    800076b4:	0007c783          	lbu	a5,0(a5)
    800076b8:	02e656bb          	divuw	a3,a2,a4
    800076bc:	f8f40023          	sb	a5,-128(s0)
    800076c0:	14c5d863          	bge	a1,a2,80007810 <__printf+0x278>
    800076c4:	06300593          	li	a1,99
    800076c8:	00100c93          	li	s9,1
    800076cc:	02e6f7bb          	remuw	a5,a3,a4
    800076d0:	02079793          	slli	a5,a5,0x20
    800076d4:	0207d793          	srli	a5,a5,0x20
    800076d8:	00fd87b3          	add	a5,s11,a5
    800076dc:	0007c783          	lbu	a5,0(a5)
    800076e0:	02e6d73b          	divuw	a4,a3,a4
    800076e4:	f8f400a3          	sb	a5,-127(s0)
    800076e8:	12a5f463          	bgeu	a1,a0,80007810 <__printf+0x278>
    800076ec:	00a00693          	li	a3,10
    800076f0:	00900593          	li	a1,9
    800076f4:	02d777bb          	remuw	a5,a4,a3
    800076f8:	02079793          	slli	a5,a5,0x20
    800076fc:	0207d793          	srli	a5,a5,0x20
    80007700:	00fd87b3          	add	a5,s11,a5
    80007704:	0007c503          	lbu	a0,0(a5)
    80007708:	02d757bb          	divuw	a5,a4,a3
    8000770c:	f8a40123          	sb	a0,-126(s0)
    80007710:	48e5f263          	bgeu	a1,a4,80007b94 <__printf+0x5fc>
    80007714:	06300513          	li	a0,99
    80007718:	02d7f5bb          	remuw	a1,a5,a3
    8000771c:	02059593          	slli	a1,a1,0x20
    80007720:	0205d593          	srli	a1,a1,0x20
    80007724:	00bd85b3          	add	a1,s11,a1
    80007728:	0005c583          	lbu	a1,0(a1)
    8000772c:	02d7d7bb          	divuw	a5,a5,a3
    80007730:	f8b401a3          	sb	a1,-125(s0)
    80007734:	48e57263          	bgeu	a0,a4,80007bb8 <__printf+0x620>
    80007738:	3e700513          	li	a0,999
    8000773c:	02d7f5bb          	remuw	a1,a5,a3
    80007740:	02059593          	slli	a1,a1,0x20
    80007744:	0205d593          	srli	a1,a1,0x20
    80007748:	00bd85b3          	add	a1,s11,a1
    8000774c:	0005c583          	lbu	a1,0(a1)
    80007750:	02d7d7bb          	divuw	a5,a5,a3
    80007754:	f8b40223          	sb	a1,-124(s0)
    80007758:	46e57663          	bgeu	a0,a4,80007bc4 <__printf+0x62c>
    8000775c:	02d7f5bb          	remuw	a1,a5,a3
    80007760:	02059593          	slli	a1,a1,0x20
    80007764:	0205d593          	srli	a1,a1,0x20
    80007768:	00bd85b3          	add	a1,s11,a1
    8000776c:	0005c583          	lbu	a1,0(a1)
    80007770:	02d7d7bb          	divuw	a5,a5,a3
    80007774:	f8b402a3          	sb	a1,-123(s0)
    80007778:	46ea7863          	bgeu	s4,a4,80007be8 <__printf+0x650>
    8000777c:	02d7f5bb          	remuw	a1,a5,a3
    80007780:	02059593          	slli	a1,a1,0x20
    80007784:	0205d593          	srli	a1,a1,0x20
    80007788:	00bd85b3          	add	a1,s11,a1
    8000778c:	0005c583          	lbu	a1,0(a1)
    80007790:	02d7d7bb          	divuw	a5,a5,a3
    80007794:	f8b40323          	sb	a1,-122(s0)
    80007798:	3eeaf863          	bgeu	s5,a4,80007b88 <__printf+0x5f0>
    8000779c:	02d7f5bb          	remuw	a1,a5,a3
    800077a0:	02059593          	slli	a1,a1,0x20
    800077a4:	0205d593          	srli	a1,a1,0x20
    800077a8:	00bd85b3          	add	a1,s11,a1
    800077ac:	0005c583          	lbu	a1,0(a1)
    800077b0:	02d7d7bb          	divuw	a5,a5,a3
    800077b4:	f8b403a3          	sb	a1,-121(s0)
    800077b8:	42eb7e63          	bgeu	s6,a4,80007bf4 <__printf+0x65c>
    800077bc:	02d7f5bb          	remuw	a1,a5,a3
    800077c0:	02059593          	slli	a1,a1,0x20
    800077c4:	0205d593          	srli	a1,a1,0x20
    800077c8:	00bd85b3          	add	a1,s11,a1
    800077cc:	0005c583          	lbu	a1,0(a1)
    800077d0:	02d7d7bb          	divuw	a5,a5,a3
    800077d4:	f8b40423          	sb	a1,-120(s0)
    800077d8:	42ebfc63          	bgeu	s7,a4,80007c10 <__printf+0x678>
    800077dc:	02079793          	slli	a5,a5,0x20
    800077e0:	0207d793          	srli	a5,a5,0x20
    800077e4:	00fd8db3          	add	s11,s11,a5
    800077e8:	000dc703          	lbu	a4,0(s11)
    800077ec:	00a00793          	li	a5,10
    800077f0:	00900c93          	li	s9,9
    800077f4:	f8e404a3          	sb	a4,-119(s0)
    800077f8:	00065c63          	bgez	a2,80007810 <__printf+0x278>
    800077fc:	f9040713          	addi	a4,s0,-112
    80007800:	00f70733          	add	a4,a4,a5
    80007804:	02d00693          	li	a3,45
    80007808:	fed70823          	sb	a3,-16(a4)
    8000780c:	00078c93          	mv	s9,a5
    80007810:	f8040793          	addi	a5,s0,-128
    80007814:	01978cb3          	add	s9,a5,s9
    80007818:	f7f40d13          	addi	s10,s0,-129
    8000781c:	000cc503          	lbu	a0,0(s9)
    80007820:	fffc8c93          	addi	s9,s9,-1
    80007824:	00000097          	auipc	ra,0x0
    80007828:	b90080e7          	jalr	-1136(ra) # 800073b4 <consputc>
    8000782c:	ffac98e3          	bne	s9,s10,8000781c <__printf+0x284>
    80007830:	00094503          	lbu	a0,0(s2)
    80007834:	e00514e3          	bnez	a0,8000763c <__printf+0xa4>
    80007838:	1a0c1663          	bnez	s8,800079e4 <__printf+0x44c>
    8000783c:	08813083          	ld	ra,136(sp)
    80007840:	08013403          	ld	s0,128(sp)
    80007844:	07813483          	ld	s1,120(sp)
    80007848:	07013903          	ld	s2,112(sp)
    8000784c:	06813983          	ld	s3,104(sp)
    80007850:	06013a03          	ld	s4,96(sp)
    80007854:	05813a83          	ld	s5,88(sp)
    80007858:	05013b03          	ld	s6,80(sp)
    8000785c:	04813b83          	ld	s7,72(sp)
    80007860:	04013c03          	ld	s8,64(sp)
    80007864:	03813c83          	ld	s9,56(sp)
    80007868:	03013d03          	ld	s10,48(sp)
    8000786c:	02813d83          	ld	s11,40(sp)
    80007870:	0d010113          	addi	sp,sp,208
    80007874:	00008067          	ret
    80007878:	07300713          	li	a4,115
    8000787c:	1ce78a63          	beq	a5,a4,80007a50 <__printf+0x4b8>
    80007880:	07800713          	li	a4,120
    80007884:	1ee79e63          	bne	a5,a4,80007a80 <__printf+0x4e8>
    80007888:	f7843783          	ld	a5,-136(s0)
    8000788c:	0007a703          	lw	a4,0(a5)
    80007890:	00878793          	addi	a5,a5,8
    80007894:	f6f43c23          	sd	a5,-136(s0)
    80007898:	28074263          	bltz	a4,80007b1c <__printf+0x584>
    8000789c:	00002d97          	auipc	s11,0x2
    800078a0:	08cd8d93          	addi	s11,s11,140 # 80009928 <digits>
    800078a4:	00f77793          	andi	a5,a4,15
    800078a8:	00fd87b3          	add	a5,s11,a5
    800078ac:	0007c683          	lbu	a3,0(a5)
    800078b0:	00f00613          	li	a2,15
    800078b4:	0007079b          	sext.w	a5,a4
    800078b8:	f8d40023          	sb	a3,-128(s0)
    800078bc:	0047559b          	srliw	a1,a4,0x4
    800078c0:	0047569b          	srliw	a3,a4,0x4
    800078c4:	00000c93          	li	s9,0
    800078c8:	0ee65063          	bge	a2,a4,800079a8 <__printf+0x410>
    800078cc:	00f6f693          	andi	a3,a3,15
    800078d0:	00dd86b3          	add	a3,s11,a3
    800078d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800078d8:	0087d79b          	srliw	a5,a5,0x8
    800078dc:	00100c93          	li	s9,1
    800078e0:	f8d400a3          	sb	a3,-127(s0)
    800078e4:	0cb67263          	bgeu	a2,a1,800079a8 <__printf+0x410>
    800078e8:	00f7f693          	andi	a3,a5,15
    800078ec:	00dd86b3          	add	a3,s11,a3
    800078f0:	0006c583          	lbu	a1,0(a3)
    800078f4:	00f00613          	li	a2,15
    800078f8:	0047d69b          	srliw	a3,a5,0x4
    800078fc:	f8b40123          	sb	a1,-126(s0)
    80007900:	0047d593          	srli	a1,a5,0x4
    80007904:	28f67e63          	bgeu	a2,a5,80007ba0 <__printf+0x608>
    80007908:	00f6f693          	andi	a3,a3,15
    8000790c:	00dd86b3          	add	a3,s11,a3
    80007910:	0006c503          	lbu	a0,0(a3)
    80007914:	0087d813          	srli	a6,a5,0x8
    80007918:	0087d69b          	srliw	a3,a5,0x8
    8000791c:	f8a401a3          	sb	a0,-125(s0)
    80007920:	28b67663          	bgeu	a2,a1,80007bac <__printf+0x614>
    80007924:	00f6f693          	andi	a3,a3,15
    80007928:	00dd86b3          	add	a3,s11,a3
    8000792c:	0006c583          	lbu	a1,0(a3)
    80007930:	00c7d513          	srli	a0,a5,0xc
    80007934:	00c7d69b          	srliw	a3,a5,0xc
    80007938:	f8b40223          	sb	a1,-124(s0)
    8000793c:	29067a63          	bgeu	a2,a6,80007bd0 <__printf+0x638>
    80007940:	00f6f693          	andi	a3,a3,15
    80007944:	00dd86b3          	add	a3,s11,a3
    80007948:	0006c583          	lbu	a1,0(a3)
    8000794c:	0107d813          	srli	a6,a5,0x10
    80007950:	0107d69b          	srliw	a3,a5,0x10
    80007954:	f8b402a3          	sb	a1,-123(s0)
    80007958:	28a67263          	bgeu	a2,a0,80007bdc <__printf+0x644>
    8000795c:	00f6f693          	andi	a3,a3,15
    80007960:	00dd86b3          	add	a3,s11,a3
    80007964:	0006c683          	lbu	a3,0(a3)
    80007968:	0147d79b          	srliw	a5,a5,0x14
    8000796c:	f8d40323          	sb	a3,-122(s0)
    80007970:	21067663          	bgeu	a2,a6,80007b7c <__printf+0x5e4>
    80007974:	02079793          	slli	a5,a5,0x20
    80007978:	0207d793          	srli	a5,a5,0x20
    8000797c:	00fd8db3          	add	s11,s11,a5
    80007980:	000dc683          	lbu	a3,0(s11)
    80007984:	00800793          	li	a5,8
    80007988:	00700c93          	li	s9,7
    8000798c:	f8d403a3          	sb	a3,-121(s0)
    80007990:	00075c63          	bgez	a4,800079a8 <__printf+0x410>
    80007994:	f9040713          	addi	a4,s0,-112
    80007998:	00f70733          	add	a4,a4,a5
    8000799c:	02d00693          	li	a3,45
    800079a0:	fed70823          	sb	a3,-16(a4)
    800079a4:	00078c93          	mv	s9,a5
    800079a8:	f8040793          	addi	a5,s0,-128
    800079ac:	01978cb3          	add	s9,a5,s9
    800079b0:	f7f40d13          	addi	s10,s0,-129
    800079b4:	000cc503          	lbu	a0,0(s9)
    800079b8:	fffc8c93          	addi	s9,s9,-1
    800079bc:	00000097          	auipc	ra,0x0
    800079c0:	9f8080e7          	jalr	-1544(ra) # 800073b4 <consputc>
    800079c4:	ff9d18e3          	bne	s10,s9,800079b4 <__printf+0x41c>
    800079c8:	0100006f          	j	800079d8 <__printf+0x440>
    800079cc:	00000097          	auipc	ra,0x0
    800079d0:	9e8080e7          	jalr	-1560(ra) # 800073b4 <consputc>
    800079d4:	000c8493          	mv	s1,s9
    800079d8:	00094503          	lbu	a0,0(s2)
    800079dc:	c60510e3          	bnez	a0,8000763c <__printf+0xa4>
    800079e0:	e40c0ee3          	beqz	s8,8000783c <__printf+0x2a4>
    800079e4:	00005517          	auipc	a0,0x5
    800079e8:	5cc50513          	addi	a0,a0,1484 # 8000cfb0 <pr>
    800079ec:	00001097          	auipc	ra,0x1
    800079f0:	94c080e7          	jalr	-1716(ra) # 80008338 <release>
    800079f4:	e49ff06f          	j	8000783c <__printf+0x2a4>
    800079f8:	f7843783          	ld	a5,-136(s0)
    800079fc:	03000513          	li	a0,48
    80007a00:	01000d13          	li	s10,16
    80007a04:	00878713          	addi	a4,a5,8
    80007a08:	0007bc83          	ld	s9,0(a5)
    80007a0c:	f6e43c23          	sd	a4,-136(s0)
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	9a4080e7          	jalr	-1628(ra) # 800073b4 <consputc>
    80007a18:	07800513          	li	a0,120
    80007a1c:	00000097          	auipc	ra,0x0
    80007a20:	998080e7          	jalr	-1640(ra) # 800073b4 <consputc>
    80007a24:	00002d97          	auipc	s11,0x2
    80007a28:	f04d8d93          	addi	s11,s11,-252 # 80009928 <digits>
    80007a2c:	03ccd793          	srli	a5,s9,0x3c
    80007a30:	00fd87b3          	add	a5,s11,a5
    80007a34:	0007c503          	lbu	a0,0(a5)
    80007a38:	fffd0d1b          	addiw	s10,s10,-1
    80007a3c:	004c9c93          	slli	s9,s9,0x4
    80007a40:	00000097          	auipc	ra,0x0
    80007a44:	974080e7          	jalr	-1676(ra) # 800073b4 <consputc>
    80007a48:	fe0d12e3          	bnez	s10,80007a2c <__printf+0x494>
    80007a4c:	f8dff06f          	j	800079d8 <__printf+0x440>
    80007a50:	f7843783          	ld	a5,-136(s0)
    80007a54:	0007bc83          	ld	s9,0(a5)
    80007a58:	00878793          	addi	a5,a5,8
    80007a5c:	f6f43c23          	sd	a5,-136(s0)
    80007a60:	000c9a63          	bnez	s9,80007a74 <__printf+0x4dc>
    80007a64:	1080006f          	j	80007b6c <__printf+0x5d4>
    80007a68:	001c8c93          	addi	s9,s9,1
    80007a6c:	00000097          	auipc	ra,0x0
    80007a70:	948080e7          	jalr	-1720(ra) # 800073b4 <consputc>
    80007a74:	000cc503          	lbu	a0,0(s9)
    80007a78:	fe0518e3          	bnez	a0,80007a68 <__printf+0x4d0>
    80007a7c:	f5dff06f          	j	800079d8 <__printf+0x440>
    80007a80:	02500513          	li	a0,37
    80007a84:	00000097          	auipc	ra,0x0
    80007a88:	930080e7          	jalr	-1744(ra) # 800073b4 <consputc>
    80007a8c:	000c8513          	mv	a0,s9
    80007a90:	00000097          	auipc	ra,0x0
    80007a94:	924080e7          	jalr	-1756(ra) # 800073b4 <consputc>
    80007a98:	f41ff06f          	j	800079d8 <__printf+0x440>
    80007a9c:	02500513          	li	a0,37
    80007aa0:	00000097          	auipc	ra,0x0
    80007aa4:	914080e7          	jalr	-1772(ra) # 800073b4 <consputc>
    80007aa8:	f31ff06f          	j	800079d8 <__printf+0x440>
    80007aac:	00030513          	mv	a0,t1
    80007ab0:	00000097          	auipc	ra,0x0
    80007ab4:	7bc080e7          	jalr	1980(ra) # 8000826c <acquire>
    80007ab8:	b4dff06f          	j	80007604 <__printf+0x6c>
    80007abc:	40c0053b          	negw	a0,a2
    80007ac0:	00a00713          	li	a4,10
    80007ac4:	02e576bb          	remuw	a3,a0,a4
    80007ac8:	00002d97          	auipc	s11,0x2
    80007acc:	e60d8d93          	addi	s11,s11,-416 # 80009928 <digits>
    80007ad0:	ff700593          	li	a1,-9
    80007ad4:	02069693          	slli	a3,a3,0x20
    80007ad8:	0206d693          	srli	a3,a3,0x20
    80007adc:	00dd86b3          	add	a3,s11,a3
    80007ae0:	0006c683          	lbu	a3,0(a3)
    80007ae4:	02e557bb          	divuw	a5,a0,a4
    80007ae8:	f8d40023          	sb	a3,-128(s0)
    80007aec:	10b65e63          	bge	a2,a1,80007c08 <__printf+0x670>
    80007af0:	06300593          	li	a1,99
    80007af4:	02e7f6bb          	remuw	a3,a5,a4
    80007af8:	02069693          	slli	a3,a3,0x20
    80007afc:	0206d693          	srli	a3,a3,0x20
    80007b00:	00dd86b3          	add	a3,s11,a3
    80007b04:	0006c683          	lbu	a3,0(a3)
    80007b08:	02e7d73b          	divuw	a4,a5,a4
    80007b0c:	00200793          	li	a5,2
    80007b10:	f8d400a3          	sb	a3,-127(s0)
    80007b14:	bca5ece3          	bltu	a1,a0,800076ec <__printf+0x154>
    80007b18:	ce5ff06f          	j	800077fc <__printf+0x264>
    80007b1c:	40e007bb          	negw	a5,a4
    80007b20:	00002d97          	auipc	s11,0x2
    80007b24:	e08d8d93          	addi	s11,s11,-504 # 80009928 <digits>
    80007b28:	00f7f693          	andi	a3,a5,15
    80007b2c:	00dd86b3          	add	a3,s11,a3
    80007b30:	0006c583          	lbu	a1,0(a3)
    80007b34:	ff100613          	li	a2,-15
    80007b38:	0047d69b          	srliw	a3,a5,0x4
    80007b3c:	f8b40023          	sb	a1,-128(s0)
    80007b40:	0047d59b          	srliw	a1,a5,0x4
    80007b44:	0ac75e63          	bge	a4,a2,80007c00 <__printf+0x668>
    80007b48:	00f6f693          	andi	a3,a3,15
    80007b4c:	00dd86b3          	add	a3,s11,a3
    80007b50:	0006c603          	lbu	a2,0(a3)
    80007b54:	00f00693          	li	a3,15
    80007b58:	0087d79b          	srliw	a5,a5,0x8
    80007b5c:	f8c400a3          	sb	a2,-127(s0)
    80007b60:	d8b6e4e3          	bltu	a3,a1,800078e8 <__printf+0x350>
    80007b64:	00200793          	li	a5,2
    80007b68:	e2dff06f          	j	80007994 <__printf+0x3fc>
    80007b6c:	00002c97          	auipc	s9,0x2
    80007b70:	d9cc8c93          	addi	s9,s9,-612 # 80009908 <CONSOLE_STATUS+0x8f8>
    80007b74:	02800513          	li	a0,40
    80007b78:	ef1ff06f          	j	80007a68 <__printf+0x4d0>
    80007b7c:	00700793          	li	a5,7
    80007b80:	00600c93          	li	s9,6
    80007b84:	e0dff06f          	j	80007990 <__printf+0x3f8>
    80007b88:	00700793          	li	a5,7
    80007b8c:	00600c93          	li	s9,6
    80007b90:	c69ff06f          	j	800077f8 <__printf+0x260>
    80007b94:	00300793          	li	a5,3
    80007b98:	00200c93          	li	s9,2
    80007b9c:	c5dff06f          	j	800077f8 <__printf+0x260>
    80007ba0:	00300793          	li	a5,3
    80007ba4:	00200c93          	li	s9,2
    80007ba8:	de9ff06f          	j	80007990 <__printf+0x3f8>
    80007bac:	00400793          	li	a5,4
    80007bb0:	00300c93          	li	s9,3
    80007bb4:	dddff06f          	j	80007990 <__printf+0x3f8>
    80007bb8:	00400793          	li	a5,4
    80007bbc:	00300c93          	li	s9,3
    80007bc0:	c39ff06f          	j	800077f8 <__printf+0x260>
    80007bc4:	00500793          	li	a5,5
    80007bc8:	00400c93          	li	s9,4
    80007bcc:	c2dff06f          	j	800077f8 <__printf+0x260>
    80007bd0:	00500793          	li	a5,5
    80007bd4:	00400c93          	li	s9,4
    80007bd8:	db9ff06f          	j	80007990 <__printf+0x3f8>
    80007bdc:	00600793          	li	a5,6
    80007be0:	00500c93          	li	s9,5
    80007be4:	dadff06f          	j	80007990 <__printf+0x3f8>
    80007be8:	00600793          	li	a5,6
    80007bec:	00500c93          	li	s9,5
    80007bf0:	c09ff06f          	j	800077f8 <__printf+0x260>
    80007bf4:	00800793          	li	a5,8
    80007bf8:	00700c93          	li	s9,7
    80007bfc:	bfdff06f          	j	800077f8 <__printf+0x260>
    80007c00:	00100793          	li	a5,1
    80007c04:	d91ff06f          	j	80007994 <__printf+0x3fc>
    80007c08:	00100793          	li	a5,1
    80007c0c:	bf1ff06f          	j	800077fc <__printf+0x264>
    80007c10:	00900793          	li	a5,9
    80007c14:	00800c93          	li	s9,8
    80007c18:	be1ff06f          	j	800077f8 <__printf+0x260>
    80007c1c:	00002517          	auipc	a0,0x2
    80007c20:	cf450513          	addi	a0,a0,-780 # 80009910 <CONSOLE_STATUS+0x900>
    80007c24:	00000097          	auipc	ra,0x0
    80007c28:	918080e7          	jalr	-1768(ra) # 8000753c <panic>

0000000080007c2c <printfinit>:
    80007c2c:	fe010113          	addi	sp,sp,-32
    80007c30:	00813823          	sd	s0,16(sp)
    80007c34:	00913423          	sd	s1,8(sp)
    80007c38:	00113c23          	sd	ra,24(sp)
    80007c3c:	02010413          	addi	s0,sp,32
    80007c40:	00005497          	auipc	s1,0x5
    80007c44:	37048493          	addi	s1,s1,880 # 8000cfb0 <pr>
    80007c48:	00048513          	mv	a0,s1
    80007c4c:	00002597          	auipc	a1,0x2
    80007c50:	cd458593          	addi	a1,a1,-812 # 80009920 <CONSOLE_STATUS+0x910>
    80007c54:	00000097          	auipc	ra,0x0
    80007c58:	5f4080e7          	jalr	1524(ra) # 80008248 <initlock>
    80007c5c:	01813083          	ld	ra,24(sp)
    80007c60:	01013403          	ld	s0,16(sp)
    80007c64:	0004ac23          	sw	zero,24(s1)
    80007c68:	00813483          	ld	s1,8(sp)
    80007c6c:	02010113          	addi	sp,sp,32
    80007c70:	00008067          	ret

0000000080007c74 <uartinit>:
    80007c74:	ff010113          	addi	sp,sp,-16
    80007c78:	00813423          	sd	s0,8(sp)
    80007c7c:	01010413          	addi	s0,sp,16
    80007c80:	100007b7          	lui	a5,0x10000
    80007c84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007c88:	f8000713          	li	a4,-128
    80007c8c:	00e781a3          	sb	a4,3(a5)
    80007c90:	00300713          	li	a4,3
    80007c94:	00e78023          	sb	a4,0(a5)
    80007c98:	000780a3          	sb	zero,1(a5)
    80007c9c:	00e781a3          	sb	a4,3(a5)
    80007ca0:	00700693          	li	a3,7
    80007ca4:	00d78123          	sb	a3,2(a5)
    80007ca8:	00e780a3          	sb	a4,1(a5)
    80007cac:	00813403          	ld	s0,8(sp)
    80007cb0:	01010113          	addi	sp,sp,16
    80007cb4:	00008067          	ret

0000000080007cb8 <uartputc>:
    80007cb8:	00004797          	auipc	a5,0x4
    80007cbc:	0007a783          	lw	a5,0(a5) # 8000bcb8 <panicked>
    80007cc0:	00078463          	beqz	a5,80007cc8 <uartputc+0x10>
    80007cc4:	0000006f          	j	80007cc4 <uartputc+0xc>
    80007cc8:	fd010113          	addi	sp,sp,-48
    80007ccc:	02813023          	sd	s0,32(sp)
    80007cd0:	00913c23          	sd	s1,24(sp)
    80007cd4:	01213823          	sd	s2,16(sp)
    80007cd8:	01313423          	sd	s3,8(sp)
    80007cdc:	02113423          	sd	ra,40(sp)
    80007ce0:	03010413          	addi	s0,sp,48
    80007ce4:	00004917          	auipc	s2,0x4
    80007ce8:	fdc90913          	addi	s2,s2,-36 # 8000bcc0 <uart_tx_r>
    80007cec:	00093783          	ld	a5,0(s2)
    80007cf0:	00004497          	auipc	s1,0x4
    80007cf4:	fd848493          	addi	s1,s1,-40 # 8000bcc8 <uart_tx_w>
    80007cf8:	0004b703          	ld	a4,0(s1)
    80007cfc:	02078693          	addi	a3,a5,32
    80007d00:	00050993          	mv	s3,a0
    80007d04:	02e69c63          	bne	a3,a4,80007d3c <uartputc+0x84>
    80007d08:	00001097          	auipc	ra,0x1
    80007d0c:	834080e7          	jalr	-1996(ra) # 8000853c <push_on>
    80007d10:	00093783          	ld	a5,0(s2)
    80007d14:	0004b703          	ld	a4,0(s1)
    80007d18:	02078793          	addi	a5,a5,32
    80007d1c:	00e79463          	bne	a5,a4,80007d24 <uartputc+0x6c>
    80007d20:	0000006f          	j	80007d20 <uartputc+0x68>
    80007d24:	00001097          	auipc	ra,0x1
    80007d28:	88c080e7          	jalr	-1908(ra) # 800085b0 <pop_on>
    80007d2c:	00093783          	ld	a5,0(s2)
    80007d30:	0004b703          	ld	a4,0(s1)
    80007d34:	02078693          	addi	a3,a5,32
    80007d38:	fce688e3          	beq	a3,a4,80007d08 <uartputc+0x50>
    80007d3c:	01f77693          	andi	a3,a4,31
    80007d40:	00005597          	auipc	a1,0x5
    80007d44:	29058593          	addi	a1,a1,656 # 8000cfd0 <uart_tx_buf>
    80007d48:	00d586b3          	add	a3,a1,a3
    80007d4c:	00170713          	addi	a4,a4,1
    80007d50:	01368023          	sb	s3,0(a3)
    80007d54:	00e4b023          	sd	a4,0(s1)
    80007d58:	10000637          	lui	a2,0x10000
    80007d5c:	02f71063          	bne	a4,a5,80007d7c <uartputc+0xc4>
    80007d60:	0340006f          	j	80007d94 <uartputc+0xdc>
    80007d64:	00074703          	lbu	a4,0(a4)
    80007d68:	00f93023          	sd	a5,0(s2)
    80007d6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007d70:	00093783          	ld	a5,0(s2)
    80007d74:	0004b703          	ld	a4,0(s1)
    80007d78:	00f70e63          	beq	a4,a5,80007d94 <uartputc+0xdc>
    80007d7c:	00564683          	lbu	a3,5(a2)
    80007d80:	01f7f713          	andi	a4,a5,31
    80007d84:	00e58733          	add	a4,a1,a4
    80007d88:	0206f693          	andi	a3,a3,32
    80007d8c:	00178793          	addi	a5,a5,1
    80007d90:	fc069ae3          	bnez	a3,80007d64 <uartputc+0xac>
    80007d94:	02813083          	ld	ra,40(sp)
    80007d98:	02013403          	ld	s0,32(sp)
    80007d9c:	01813483          	ld	s1,24(sp)
    80007da0:	01013903          	ld	s2,16(sp)
    80007da4:	00813983          	ld	s3,8(sp)
    80007da8:	03010113          	addi	sp,sp,48
    80007dac:	00008067          	ret

0000000080007db0 <uartputc_sync>:
    80007db0:	ff010113          	addi	sp,sp,-16
    80007db4:	00813423          	sd	s0,8(sp)
    80007db8:	01010413          	addi	s0,sp,16
    80007dbc:	00004717          	auipc	a4,0x4
    80007dc0:	efc72703          	lw	a4,-260(a4) # 8000bcb8 <panicked>
    80007dc4:	02071663          	bnez	a4,80007df0 <uartputc_sync+0x40>
    80007dc8:	00050793          	mv	a5,a0
    80007dcc:	100006b7          	lui	a3,0x10000
    80007dd0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007dd4:	02077713          	andi	a4,a4,32
    80007dd8:	fe070ce3          	beqz	a4,80007dd0 <uartputc_sync+0x20>
    80007ddc:	0ff7f793          	andi	a5,a5,255
    80007de0:	00f68023          	sb	a5,0(a3)
    80007de4:	00813403          	ld	s0,8(sp)
    80007de8:	01010113          	addi	sp,sp,16
    80007dec:	00008067          	ret
    80007df0:	0000006f          	j	80007df0 <uartputc_sync+0x40>

0000000080007df4 <uartstart>:
    80007df4:	ff010113          	addi	sp,sp,-16
    80007df8:	00813423          	sd	s0,8(sp)
    80007dfc:	01010413          	addi	s0,sp,16
    80007e00:	00004617          	auipc	a2,0x4
    80007e04:	ec060613          	addi	a2,a2,-320 # 8000bcc0 <uart_tx_r>
    80007e08:	00004517          	auipc	a0,0x4
    80007e0c:	ec050513          	addi	a0,a0,-320 # 8000bcc8 <uart_tx_w>
    80007e10:	00063783          	ld	a5,0(a2)
    80007e14:	00053703          	ld	a4,0(a0)
    80007e18:	04f70263          	beq	a4,a5,80007e5c <uartstart+0x68>
    80007e1c:	100005b7          	lui	a1,0x10000
    80007e20:	00005817          	auipc	a6,0x5
    80007e24:	1b080813          	addi	a6,a6,432 # 8000cfd0 <uart_tx_buf>
    80007e28:	01c0006f          	j	80007e44 <uartstart+0x50>
    80007e2c:	0006c703          	lbu	a4,0(a3)
    80007e30:	00f63023          	sd	a5,0(a2)
    80007e34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e38:	00063783          	ld	a5,0(a2)
    80007e3c:	00053703          	ld	a4,0(a0)
    80007e40:	00f70e63          	beq	a4,a5,80007e5c <uartstart+0x68>
    80007e44:	01f7f713          	andi	a4,a5,31
    80007e48:	00e806b3          	add	a3,a6,a4
    80007e4c:	0055c703          	lbu	a4,5(a1)
    80007e50:	00178793          	addi	a5,a5,1
    80007e54:	02077713          	andi	a4,a4,32
    80007e58:	fc071ae3          	bnez	a4,80007e2c <uartstart+0x38>
    80007e5c:	00813403          	ld	s0,8(sp)
    80007e60:	01010113          	addi	sp,sp,16
    80007e64:	00008067          	ret

0000000080007e68 <uartgetc>:
    80007e68:	ff010113          	addi	sp,sp,-16
    80007e6c:	00813423          	sd	s0,8(sp)
    80007e70:	01010413          	addi	s0,sp,16
    80007e74:	10000737          	lui	a4,0x10000
    80007e78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007e7c:	0017f793          	andi	a5,a5,1
    80007e80:	00078c63          	beqz	a5,80007e98 <uartgetc+0x30>
    80007e84:	00074503          	lbu	a0,0(a4)
    80007e88:	0ff57513          	andi	a0,a0,255
    80007e8c:	00813403          	ld	s0,8(sp)
    80007e90:	01010113          	addi	sp,sp,16
    80007e94:	00008067          	ret
    80007e98:	fff00513          	li	a0,-1
    80007e9c:	ff1ff06f          	j	80007e8c <uartgetc+0x24>

0000000080007ea0 <uartintr>:
    80007ea0:	100007b7          	lui	a5,0x10000
    80007ea4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ea8:	0017f793          	andi	a5,a5,1
    80007eac:	0a078463          	beqz	a5,80007f54 <uartintr+0xb4>
    80007eb0:	fe010113          	addi	sp,sp,-32
    80007eb4:	00813823          	sd	s0,16(sp)
    80007eb8:	00913423          	sd	s1,8(sp)
    80007ebc:	00113c23          	sd	ra,24(sp)
    80007ec0:	02010413          	addi	s0,sp,32
    80007ec4:	100004b7          	lui	s1,0x10000
    80007ec8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007ecc:	0ff57513          	andi	a0,a0,255
    80007ed0:	fffff097          	auipc	ra,0xfffff
    80007ed4:	534080e7          	jalr	1332(ra) # 80007404 <consoleintr>
    80007ed8:	0054c783          	lbu	a5,5(s1)
    80007edc:	0017f793          	andi	a5,a5,1
    80007ee0:	fe0794e3          	bnez	a5,80007ec8 <uartintr+0x28>
    80007ee4:	00004617          	auipc	a2,0x4
    80007ee8:	ddc60613          	addi	a2,a2,-548 # 8000bcc0 <uart_tx_r>
    80007eec:	00004517          	auipc	a0,0x4
    80007ef0:	ddc50513          	addi	a0,a0,-548 # 8000bcc8 <uart_tx_w>
    80007ef4:	00063783          	ld	a5,0(a2)
    80007ef8:	00053703          	ld	a4,0(a0)
    80007efc:	04f70263          	beq	a4,a5,80007f40 <uartintr+0xa0>
    80007f00:	100005b7          	lui	a1,0x10000
    80007f04:	00005817          	auipc	a6,0x5
    80007f08:	0cc80813          	addi	a6,a6,204 # 8000cfd0 <uart_tx_buf>
    80007f0c:	01c0006f          	j	80007f28 <uartintr+0x88>
    80007f10:	0006c703          	lbu	a4,0(a3)
    80007f14:	00f63023          	sd	a5,0(a2)
    80007f18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f1c:	00063783          	ld	a5,0(a2)
    80007f20:	00053703          	ld	a4,0(a0)
    80007f24:	00f70e63          	beq	a4,a5,80007f40 <uartintr+0xa0>
    80007f28:	01f7f713          	andi	a4,a5,31
    80007f2c:	00e806b3          	add	a3,a6,a4
    80007f30:	0055c703          	lbu	a4,5(a1)
    80007f34:	00178793          	addi	a5,a5,1
    80007f38:	02077713          	andi	a4,a4,32
    80007f3c:	fc071ae3          	bnez	a4,80007f10 <uartintr+0x70>
    80007f40:	01813083          	ld	ra,24(sp)
    80007f44:	01013403          	ld	s0,16(sp)
    80007f48:	00813483          	ld	s1,8(sp)
    80007f4c:	02010113          	addi	sp,sp,32
    80007f50:	00008067          	ret
    80007f54:	00004617          	auipc	a2,0x4
    80007f58:	d6c60613          	addi	a2,a2,-660 # 8000bcc0 <uart_tx_r>
    80007f5c:	00004517          	auipc	a0,0x4
    80007f60:	d6c50513          	addi	a0,a0,-660 # 8000bcc8 <uart_tx_w>
    80007f64:	00063783          	ld	a5,0(a2)
    80007f68:	00053703          	ld	a4,0(a0)
    80007f6c:	04f70263          	beq	a4,a5,80007fb0 <uartintr+0x110>
    80007f70:	100005b7          	lui	a1,0x10000
    80007f74:	00005817          	auipc	a6,0x5
    80007f78:	05c80813          	addi	a6,a6,92 # 8000cfd0 <uart_tx_buf>
    80007f7c:	01c0006f          	j	80007f98 <uartintr+0xf8>
    80007f80:	0006c703          	lbu	a4,0(a3)
    80007f84:	00f63023          	sd	a5,0(a2)
    80007f88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f8c:	00063783          	ld	a5,0(a2)
    80007f90:	00053703          	ld	a4,0(a0)
    80007f94:	02f70063          	beq	a4,a5,80007fb4 <uartintr+0x114>
    80007f98:	01f7f713          	andi	a4,a5,31
    80007f9c:	00e806b3          	add	a3,a6,a4
    80007fa0:	0055c703          	lbu	a4,5(a1)
    80007fa4:	00178793          	addi	a5,a5,1
    80007fa8:	02077713          	andi	a4,a4,32
    80007fac:	fc071ae3          	bnez	a4,80007f80 <uartintr+0xe0>
    80007fb0:	00008067          	ret
    80007fb4:	00008067          	ret

0000000080007fb8 <kinit>:
    80007fb8:	fc010113          	addi	sp,sp,-64
    80007fbc:	02913423          	sd	s1,40(sp)
    80007fc0:	fffff7b7          	lui	a5,0xfffff
    80007fc4:	00006497          	auipc	s1,0x6
    80007fc8:	02b48493          	addi	s1,s1,43 # 8000dfef <end+0xfff>
    80007fcc:	02813823          	sd	s0,48(sp)
    80007fd0:	01313c23          	sd	s3,24(sp)
    80007fd4:	00f4f4b3          	and	s1,s1,a5
    80007fd8:	02113c23          	sd	ra,56(sp)
    80007fdc:	03213023          	sd	s2,32(sp)
    80007fe0:	01413823          	sd	s4,16(sp)
    80007fe4:	01513423          	sd	s5,8(sp)
    80007fe8:	04010413          	addi	s0,sp,64
    80007fec:	000017b7          	lui	a5,0x1
    80007ff0:	01100993          	li	s3,17
    80007ff4:	00f487b3          	add	a5,s1,a5
    80007ff8:	01b99993          	slli	s3,s3,0x1b
    80007ffc:	06f9e063          	bltu	s3,a5,8000805c <kinit+0xa4>
    80008000:	00005a97          	auipc	s5,0x5
    80008004:	ff0a8a93          	addi	s5,s5,-16 # 8000cff0 <end>
    80008008:	0754ec63          	bltu	s1,s5,80008080 <kinit+0xc8>
    8000800c:	0734fa63          	bgeu	s1,s3,80008080 <kinit+0xc8>
    80008010:	00088a37          	lui	s4,0x88
    80008014:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008018:	00004917          	auipc	s2,0x4
    8000801c:	cb890913          	addi	s2,s2,-840 # 8000bcd0 <kmem>
    80008020:	00ca1a13          	slli	s4,s4,0xc
    80008024:	0140006f          	j	80008038 <kinit+0x80>
    80008028:	000017b7          	lui	a5,0x1
    8000802c:	00f484b3          	add	s1,s1,a5
    80008030:	0554e863          	bltu	s1,s5,80008080 <kinit+0xc8>
    80008034:	0534f663          	bgeu	s1,s3,80008080 <kinit+0xc8>
    80008038:	00001637          	lui	a2,0x1
    8000803c:	00100593          	li	a1,1
    80008040:	00048513          	mv	a0,s1
    80008044:	00000097          	auipc	ra,0x0
    80008048:	5e4080e7          	jalr	1508(ra) # 80008628 <__memset>
    8000804c:	00093783          	ld	a5,0(s2)
    80008050:	00f4b023          	sd	a5,0(s1)
    80008054:	00993023          	sd	s1,0(s2)
    80008058:	fd4498e3          	bne	s1,s4,80008028 <kinit+0x70>
    8000805c:	03813083          	ld	ra,56(sp)
    80008060:	03013403          	ld	s0,48(sp)
    80008064:	02813483          	ld	s1,40(sp)
    80008068:	02013903          	ld	s2,32(sp)
    8000806c:	01813983          	ld	s3,24(sp)
    80008070:	01013a03          	ld	s4,16(sp)
    80008074:	00813a83          	ld	s5,8(sp)
    80008078:	04010113          	addi	sp,sp,64
    8000807c:	00008067          	ret
    80008080:	00002517          	auipc	a0,0x2
    80008084:	8c050513          	addi	a0,a0,-1856 # 80009940 <digits+0x18>
    80008088:	fffff097          	auipc	ra,0xfffff
    8000808c:	4b4080e7          	jalr	1204(ra) # 8000753c <panic>

0000000080008090 <freerange>:
    80008090:	fc010113          	addi	sp,sp,-64
    80008094:	000017b7          	lui	a5,0x1
    80008098:	02913423          	sd	s1,40(sp)
    8000809c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800080a0:	009504b3          	add	s1,a0,s1
    800080a4:	fffff537          	lui	a0,0xfffff
    800080a8:	02813823          	sd	s0,48(sp)
    800080ac:	02113c23          	sd	ra,56(sp)
    800080b0:	03213023          	sd	s2,32(sp)
    800080b4:	01313c23          	sd	s3,24(sp)
    800080b8:	01413823          	sd	s4,16(sp)
    800080bc:	01513423          	sd	s5,8(sp)
    800080c0:	01613023          	sd	s6,0(sp)
    800080c4:	04010413          	addi	s0,sp,64
    800080c8:	00a4f4b3          	and	s1,s1,a0
    800080cc:	00f487b3          	add	a5,s1,a5
    800080d0:	06f5e463          	bltu	a1,a5,80008138 <freerange+0xa8>
    800080d4:	00005a97          	auipc	s5,0x5
    800080d8:	f1ca8a93          	addi	s5,s5,-228 # 8000cff0 <end>
    800080dc:	0954e263          	bltu	s1,s5,80008160 <freerange+0xd0>
    800080e0:	01100993          	li	s3,17
    800080e4:	01b99993          	slli	s3,s3,0x1b
    800080e8:	0734fc63          	bgeu	s1,s3,80008160 <freerange+0xd0>
    800080ec:	00058a13          	mv	s4,a1
    800080f0:	00004917          	auipc	s2,0x4
    800080f4:	be090913          	addi	s2,s2,-1056 # 8000bcd0 <kmem>
    800080f8:	00002b37          	lui	s6,0x2
    800080fc:	0140006f          	j	80008110 <freerange+0x80>
    80008100:	000017b7          	lui	a5,0x1
    80008104:	00f484b3          	add	s1,s1,a5
    80008108:	0554ec63          	bltu	s1,s5,80008160 <freerange+0xd0>
    8000810c:	0534fa63          	bgeu	s1,s3,80008160 <freerange+0xd0>
    80008110:	00001637          	lui	a2,0x1
    80008114:	00100593          	li	a1,1
    80008118:	00048513          	mv	a0,s1
    8000811c:	00000097          	auipc	ra,0x0
    80008120:	50c080e7          	jalr	1292(ra) # 80008628 <__memset>
    80008124:	00093703          	ld	a4,0(s2)
    80008128:	016487b3          	add	a5,s1,s6
    8000812c:	00e4b023          	sd	a4,0(s1)
    80008130:	00993023          	sd	s1,0(s2)
    80008134:	fcfa76e3          	bgeu	s4,a5,80008100 <freerange+0x70>
    80008138:	03813083          	ld	ra,56(sp)
    8000813c:	03013403          	ld	s0,48(sp)
    80008140:	02813483          	ld	s1,40(sp)
    80008144:	02013903          	ld	s2,32(sp)
    80008148:	01813983          	ld	s3,24(sp)
    8000814c:	01013a03          	ld	s4,16(sp)
    80008150:	00813a83          	ld	s5,8(sp)
    80008154:	00013b03          	ld	s6,0(sp)
    80008158:	04010113          	addi	sp,sp,64
    8000815c:	00008067          	ret
    80008160:	00001517          	auipc	a0,0x1
    80008164:	7e050513          	addi	a0,a0,2016 # 80009940 <digits+0x18>
    80008168:	fffff097          	auipc	ra,0xfffff
    8000816c:	3d4080e7          	jalr	980(ra) # 8000753c <panic>

0000000080008170 <kfree>:
    80008170:	fe010113          	addi	sp,sp,-32
    80008174:	00813823          	sd	s0,16(sp)
    80008178:	00113c23          	sd	ra,24(sp)
    8000817c:	00913423          	sd	s1,8(sp)
    80008180:	02010413          	addi	s0,sp,32
    80008184:	03451793          	slli	a5,a0,0x34
    80008188:	04079c63          	bnez	a5,800081e0 <kfree+0x70>
    8000818c:	00005797          	auipc	a5,0x5
    80008190:	e6478793          	addi	a5,a5,-412 # 8000cff0 <end>
    80008194:	00050493          	mv	s1,a0
    80008198:	04f56463          	bltu	a0,a5,800081e0 <kfree+0x70>
    8000819c:	01100793          	li	a5,17
    800081a0:	01b79793          	slli	a5,a5,0x1b
    800081a4:	02f57e63          	bgeu	a0,a5,800081e0 <kfree+0x70>
    800081a8:	00001637          	lui	a2,0x1
    800081ac:	00100593          	li	a1,1
    800081b0:	00000097          	auipc	ra,0x0
    800081b4:	478080e7          	jalr	1144(ra) # 80008628 <__memset>
    800081b8:	00004797          	auipc	a5,0x4
    800081bc:	b1878793          	addi	a5,a5,-1256 # 8000bcd0 <kmem>
    800081c0:	0007b703          	ld	a4,0(a5)
    800081c4:	01813083          	ld	ra,24(sp)
    800081c8:	01013403          	ld	s0,16(sp)
    800081cc:	00e4b023          	sd	a4,0(s1)
    800081d0:	0097b023          	sd	s1,0(a5)
    800081d4:	00813483          	ld	s1,8(sp)
    800081d8:	02010113          	addi	sp,sp,32
    800081dc:	00008067          	ret
    800081e0:	00001517          	auipc	a0,0x1
    800081e4:	76050513          	addi	a0,a0,1888 # 80009940 <digits+0x18>
    800081e8:	fffff097          	auipc	ra,0xfffff
    800081ec:	354080e7          	jalr	852(ra) # 8000753c <panic>

00000000800081f0 <kalloc>:
    800081f0:	fe010113          	addi	sp,sp,-32
    800081f4:	00813823          	sd	s0,16(sp)
    800081f8:	00913423          	sd	s1,8(sp)
    800081fc:	00113c23          	sd	ra,24(sp)
    80008200:	02010413          	addi	s0,sp,32
    80008204:	00004797          	auipc	a5,0x4
    80008208:	acc78793          	addi	a5,a5,-1332 # 8000bcd0 <kmem>
    8000820c:	0007b483          	ld	s1,0(a5)
    80008210:	02048063          	beqz	s1,80008230 <kalloc+0x40>
    80008214:	0004b703          	ld	a4,0(s1)
    80008218:	00001637          	lui	a2,0x1
    8000821c:	00500593          	li	a1,5
    80008220:	00048513          	mv	a0,s1
    80008224:	00e7b023          	sd	a4,0(a5)
    80008228:	00000097          	auipc	ra,0x0
    8000822c:	400080e7          	jalr	1024(ra) # 80008628 <__memset>
    80008230:	01813083          	ld	ra,24(sp)
    80008234:	01013403          	ld	s0,16(sp)
    80008238:	00048513          	mv	a0,s1
    8000823c:	00813483          	ld	s1,8(sp)
    80008240:	02010113          	addi	sp,sp,32
    80008244:	00008067          	ret

0000000080008248 <initlock>:
    80008248:	ff010113          	addi	sp,sp,-16
    8000824c:	00813423          	sd	s0,8(sp)
    80008250:	01010413          	addi	s0,sp,16
    80008254:	00813403          	ld	s0,8(sp)
    80008258:	00b53423          	sd	a1,8(a0)
    8000825c:	00052023          	sw	zero,0(a0)
    80008260:	00053823          	sd	zero,16(a0)
    80008264:	01010113          	addi	sp,sp,16
    80008268:	00008067          	ret

000000008000826c <acquire>:
    8000826c:	fe010113          	addi	sp,sp,-32
    80008270:	00813823          	sd	s0,16(sp)
    80008274:	00913423          	sd	s1,8(sp)
    80008278:	00113c23          	sd	ra,24(sp)
    8000827c:	01213023          	sd	s2,0(sp)
    80008280:	02010413          	addi	s0,sp,32
    80008284:	00050493          	mv	s1,a0
    80008288:	10002973          	csrr	s2,sstatus
    8000828c:	100027f3          	csrr	a5,sstatus
    80008290:	ffd7f793          	andi	a5,a5,-3
    80008294:	10079073          	csrw	sstatus,a5
    80008298:	fffff097          	auipc	ra,0xfffff
    8000829c:	8e4080e7          	jalr	-1820(ra) # 80006b7c <mycpu>
    800082a0:	07852783          	lw	a5,120(a0)
    800082a4:	06078e63          	beqz	a5,80008320 <acquire+0xb4>
    800082a8:	fffff097          	auipc	ra,0xfffff
    800082ac:	8d4080e7          	jalr	-1836(ra) # 80006b7c <mycpu>
    800082b0:	07852783          	lw	a5,120(a0)
    800082b4:	0004a703          	lw	a4,0(s1)
    800082b8:	0017879b          	addiw	a5,a5,1
    800082bc:	06f52c23          	sw	a5,120(a0)
    800082c0:	04071063          	bnez	a4,80008300 <acquire+0x94>
    800082c4:	00100713          	li	a4,1
    800082c8:	00070793          	mv	a5,a4
    800082cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800082d0:	0007879b          	sext.w	a5,a5
    800082d4:	fe079ae3          	bnez	a5,800082c8 <acquire+0x5c>
    800082d8:	0ff0000f          	fence
    800082dc:	fffff097          	auipc	ra,0xfffff
    800082e0:	8a0080e7          	jalr	-1888(ra) # 80006b7c <mycpu>
    800082e4:	01813083          	ld	ra,24(sp)
    800082e8:	01013403          	ld	s0,16(sp)
    800082ec:	00a4b823          	sd	a0,16(s1)
    800082f0:	00013903          	ld	s2,0(sp)
    800082f4:	00813483          	ld	s1,8(sp)
    800082f8:	02010113          	addi	sp,sp,32
    800082fc:	00008067          	ret
    80008300:	0104b903          	ld	s2,16(s1)
    80008304:	fffff097          	auipc	ra,0xfffff
    80008308:	878080e7          	jalr	-1928(ra) # 80006b7c <mycpu>
    8000830c:	faa91ce3          	bne	s2,a0,800082c4 <acquire+0x58>
    80008310:	00001517          	auipc	a0,0x1
    80008314:	63850513          	addi	a0,a0,1592 # 80009948 <digits+0x20>
    80008318:	fffff097          	auipc	ra,0xfffff
    8000831c:	224080e7          	jalr	548(ra) # 8000753c <panic>
    80008320:	00195913          	srli	s2,s2,0x1
    80008324:	fffff097          	auipc	ra,0xfffff
    80008328:	858080e7          	jalr	-1960(ra) # 80006b7c <mycpu>
    8000832c:	00197913          	andi	s2,s2,1
    80008330:	07252e23          	sw	s2,124(a0)
    80008334:	f75ff06f          	j	800082a8 <acquire+0x3c>

0000000080008338 <release>:
    80008338:	fe010113          	addi	sp,sp,-32
    8000833c:	00813823          	sd	s0,16(sp)
    80008340:	00113c23          	sd	ra,24(sp)
    80008344:	00913423          	sd	s1,8(sp)
    80008348:	01213023          	sd	s2,0(sp)
    8000834c:	02010413          	addi	s0,sp,32
    80008350:	00052783          	lw	a5,0(a0)
    80008354:	00079a63          	bnez	a5,80008368 <release+0x30>
    80008358:	00001517          	auipc	a0,0x1
    8000835c:	5f850513          	addi	a0,a0,1528 # 80009950 <digits+0x28>
    80008360:	fffff097          	auipc	ra,0xfffff
    80008364:	1dc080e7          	jalr	476(ra) # 8000753c <panic>
    80008368:	01053903          	ld	s2,16(a0)
    8000836c:	00050493          	mv	s1,a0
    80008370:	fffff097          	auipc	ra,0xfffff
    80008374:	80c080e7          	jalr	-2036(ra) # 80006b7c <mycpu>
    80008378:	fea910e3          	bne	s2,a0,80008358 <release+0x20>
    8000837c:	0004b823          	sd	zero,16(s1)
    80008380:	0ff0000f          	fence
    80008384:	0f50000f          	fence	iorw,ow
    80008388:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000838c:	ffffe097          	auipc	ra,0xffffe
    80008390:	7f0080e7          	jalr	2032(ra) # 80006b7c <mycpu>
    80008394:	100027f3          	csrr	a5,sstatus
    80008398:	0027f793          	andi	a5,a5,2
    8000839c:	04079a63          	bnez	a5,800083f0 <release+0xb8>
    800083a0:	07852783          	lw	a5,120(a0)
    800083a4:	02f05e63          	blez	a5,800083e0 <release+0xa8>
    800083a8:	fff7871b          	addiw	a4,a5,-1
    800083ac:	06e52c23          	sw	a4,120(a0)
    800083b0:	00071c63          	bnez	a4,800083c8 <release+0x90>
    800083b4:	07c52783          	lw	a5,124(a0)
    800083b8:	00078863          	beqz	a5,800083c8 <release+0x90>
    800083bc:	100027f3          	csrr	a5,sstatus
    800083c0:	0027e793          	ori	a5,a5,2
    800083c4:	10079073          	csrw	sstatus,a5
    800083c8:	01813083          	ld	ra,24(sp)
    800083cc:	01013403          	ld	s0,16(sp)
    800083d0:	00813483          	ld	s1,8(sp)
    800083d4:	00013903          	ld	s2,0(sp)
    800083d8:	02010113          	addi	sp,sp,32
    800083dc:	00008067          	ret
    800083e0:	00001517          	auipc	a0,0x1
    800083e4:	59050513          	addi	a0,a0,1424 # 80009970 <digits+0x48>
    800083e8:	fffff097          	auipc	ra,0xfffff
    800083ec:	154080e7          	jalr	340(ra) # 8000753c <panic>
    800083f0:	00001517          	auipc	a0,0x1
    800083f4:	56850513          	addi	a0,a0,1384 # 80009958 <digits+0x30>
    800083f8:	fffff097          	auipc	ra,0xfffff
    800083fc:	144080e7          	jalr	324(ra) # 8000753c <panic>

0000000080008400 <holding>:
    80008400:	00052783          	lw	a5,0(a0)
    80008404:	00079663          	bnez	a5,80008410 <holding+0x10>
    80008408:	00000513          	li	a0,0
    8000840c:	00008067          	ret
    80008410:	fe010113          	addi	sp,sp,-32
    80008414:	00813823          	sd	s0,16(sp)
    80008418:	00913423          	sd	s1,8(sp)
    8000841c:	00113c23          	sd	ra,24(sp)
    80008420:	02010413          	addi	s0,sp,32
    80008424:	01053483          	ld	s1,16(a0)
    80008428:	ffffe097          	auipc	ra,0xffffe
    8000842c:	754080e7          	jalr	1876(ra) # 80006b7c <mycpu>
    80008430:	01813083          	ld	ra,24(sp)
    80008434:	01013403          	ld	s0,16(sp)
    80008438:	40a48533          	sub	a0,s1,a0
    8000843c:	00153513          	seqz	a0,a0
    80008440:	00813483          	ld	s1,8(sp)
    80008444:	02010113          	addi	sp,sp,32
    80008448:	00008067          	ret

000000008000844c <push_off>:
    8000844c:	fe010113          	addi	sp,sp,-32
    80008450:	00813823          	sd	s0,16(sp)
    80008454:	00113c23          	sd	ra,24(sp)
    80008458:	00913423          	sd	s1,8(sp)
    8000845c:	02010413          	addi	s0,sp,32
    80008460:	100024f3          	csrr	s1,sstatus
    80008464:	100027f3          	csrr	a5,sstatus
    80008468:	ffd7f793          	andi	a5,a5,-3
    8000846c:	10079073          	csrw	sstatus,a5
    80008470:	ffffe097          	auipc	ra,0xffffe
    80008474:	70c080e7          	jalr	1804(ra) # 80006b7c <mycpu>
    80008478:	07852783          	lw	a5,120(a0)
    8000847c:	02078663          	beqz	a5,800084a8 <push_off+0x5c>
    80008480:	ffffe097          	auipc	ra,0xffffe
    80008484:	6fc080e7          	jalr	1788(ra) # 80006b7c <mycpu>
    80008488:	07852783          	lw	a5,120(a0)
    8000848c:	01813083          	ld	ra,24(sp)
    80008490:	01013403          	ld	s0,16(sp)
    80008494:	0017879b          	addiw	a5,a5,1
    80008498:	06f52c23          	sw	a5,120(a0)
    8000849c:	00813483          	ld	s1,8(sp)
    800084a0:	02010113          	addi	sp,sp,32
    800084a4:	00008067          	ret
    800084a8:	0014d493          	srli	s1,s1,0x1
    800084ac:	ffffe097          	auipc	ra,0xffffe
    800084b0:	6d0080e7          	jalr	1744(ra) # 80006b7c <mycpu>
    800084b4:	0014f493          	andi	s1,s1,1
    800084b8:	06952e23          	sw	s1,124(a0)
    800084bc:	fc5ff06f          	j	80008480 <push_off+0x34>

00000000800084c0 <pop_off>:
    800084c0:	ff010113          	addi	sp,sp,-16
    800084c4:	00813023          	sd	s0,0(sp)
    800084c8:	00113423          	sd	ra,8(sp)
    800084cc:	01010413          	addi	s0,sp,16
    800084d0:	ffffe097          	auipc	ra,0xffffe
    800084d4:	6ac080e7          	jalr	1708(ra) # 80006b7c <mycpu>
    800084d8:	100027f3          	csrr	a5,sstatus
    800084dc:	0027f793          	andi	a5,a5,2
    800084e0:	04079663          	bnez	a5,8000852c <pop_off+0x6c>
    800084e4:	07852783          	lw	a5,120(a0)
    800084e8:	02f05a63          	blez	a5,8000851c <pop_off+0x5c>
    800084ec:	fff7871b          	addiw	a4,a5,-1
    800084f0:	06e52c23          	sw	a4,120(a0)
    800084f4:	00071c63          	bnez	a4,8000850c <pop_off+0x4c>
    800084f8:	07c52783          	lw	a5,124(a0)
    800084fc:	00078863          	beqz	a5,8000850c <pop_off+0x4c>
    80008500:	100027f3          	csrr	a5,sstatus
    80008504:	0027e793          	ori	a5,a5,2
    80008508:	10079073          	csrw	sstatus,a5
    8000850c:	00813083          	ld	ra,8(sp)
    80008510:	00013403          	ld	s0,0(sp)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret
    8000851c:	00001517          	auipc	a0,0x1
    80008520:	45450513          	addi	a0,a0,1108 # 80009970 <digits+0x48>
    80008524:	fffff097          	auipc	ra,0xfffff
    80008528:	018080e7          	jalr	24(ra) # 8000753c <panic>
    8000852c:	00001517          	auipc	a0,0x1
    80008530:	42c50513          	addi	a0,a0,1068 # 80009958 <digits+0x30>
    80008534:	fffff097          	auipc	ra,0xfffff
    80008538:	008080e7          	jalr	8(ra) # 8000753c <panic>

000000008000853c <push_on>:
    8000853c:	fe010113          	addi	sp,sp,-32
    80008540:	00813823          	sd	s0,16(sp)
    80008544:	00113c23          	sd	ra,24(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	02010413          	addi	s0,sp,32
    80008550:	100024f3          	csrr	s1,sstatus
    80008554:	100027f3          	csrr	a5,sstatus
    80008558:	0027e793          	ori	a5,a5,2
    8000855c:	10079073          	csrw	sstatus,a5
    80008560:	ffffe097          	auipc	ra,0xffffe
    80008564:	61c080e7          	jalr	1564(ra) # 80006b7c <mycpu>
    80008568:	07852783          	lw	a5,120(a0)
    8000856c:	02078663          	beqz	a5,80008598 <push_on+0x5c>
    80008570:	ffffe097          	auipc	ra,0xffffe
    80008574:	60c080e7          	jalr	1548(ra) # 80006b7c <mycpu>
    80008578:	07852783          	lw	a5,120(a0)
    8000857c:	01813083          	ld	ra,24(sp)
    80008580:	01013403          	ld	s0,16(sp)
    80008584:	0017879b          	addiw	a5,a5,1
    80008588:	06f52c23          	sw	a5,120(a0)
    8000858c:	00813483          	ld	s1,8(sp)
    80008590:	02010113          	addi	sp,sp,32
    80008594:	00008067          	ret
    80008598:	0014d493          	srli	s1,s1,0x1
    8000859c:	ffffe097          	auipc	ra,0xffffe
    800085a0:	5e0080e7          	jalr	1504(ra) # 80006b7c <mycpu>
    800085a4:	0014f493          	andi	s1,s1,1
    800085a8:	06952e23          	sw	s1,124(a0)
    800085ac:	fc5ff06f          	j	80008570 <push_on+0x34>

00000000800085b0 <pop_on>:
    800085b0:	ff010113          	addi	sp,sp,-16
    800085b4:	00813023          	sd	s0,0(sp)
    800085b8:	00113423          	sd	ra,8(sp)
    800085bc:	01010413          	addi	s0,sp,16
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	5bc080e7          	jalr	1468(ra) # 80006b7c <mycpu>
    800085c8:	100027f3          	csrr	a5,sstatus
    800085cc:	0027f793          	andi	a5,a5,2
    800085d0:	04078463          	beqz	a5,80008618 <pop_on+0x68>
    800085d4:	07852783          	lw	a5,120(a0)
    800085d8:	02f05863          	blez	a5,80008608 <pop_on+0x58>
    800085dc:	fff7879b          	addiw	a5,a5,-1
    800085e0:	06f52c23          	sw	a5,120(a0)
    800085e4:	07853783          	ld	a5,120(a0)
    800085e8:	00079863          	bnez	a5,800085f8 <pop_on+0x48>
    800085ec:	100027f3          	csrr	a5,sstatus
    800085f0:	ffd7f793          	andi	a5,a5,-3
    800085f4:	10079073          	csrw	sstatus,a5
    800085f8:	00813083          	ld	ra,8(sp)
    800085fc:	00013403          	ld	s0,0(sp)
    80008600:	01010113          	addi	sp,sp,16
    80008604:	00008067          	ret
    80008608:	00001517          	auipc	a0,0x1
    8000860c:	39050513          	addi	a0,a0,912 # 80009998 <digits+0x70>
    80008610:	fffff097          	auipc	ra,0xfffff
    80008614:	f2c080e7          	jalr	-212(ra) # 8000753c <panic>
    80008618:	00001517          	auipc	a0,0x1
    8000861c:	36050513          	addi	a0,a0,864 # 80009978 <digits+0x50>
    80008620:	fffff097          	auipc	ra,0xfffff
    80008624:	f1c080e7          	jalr	-228(ra) # 8000753c <panic>

0000000080008628 <__memset>:
    80008628:	ff010113          	addi	sp,sp,-16
    8000862c:	00813423          	sd	s0,8(sp)
    80008630:	01010413          	addi	s0,sp,16
    80008634:	1a060e63          	beqz	a2,800087f0 <__memset+0x1c8>
    80008638:	40a007b3          	neg	a5,a0
    8000863c:	0077f793          	andi	a5,a5,7
    80008640:	00778693          	addi	a3,a5,7
    80008644:	00b00813          	li	a6,11
    80008648:	0ff5f593          	andi	a1,a1,255
    8000864c:	fff6071b          	addiw	a4,a2,-1
    80008650:	1b06e663          	bltu	a3,a6,800087fc <__memset+0x1d4>
    80008654:	1cd76463          	bltu	a4,a3,8000881c <__memset+0x1f4>
    80008658:	1a078e63          	beqz	a5,80008814 <__memset+0x1ec>
    8000865c:	00b50023          	sb	a1,0(a0)
    80008660:	00100713          	li	a4,1
    80008664:	1ae78463          	beq	a5,a4,8000880c <__memset+0x1e4>
    80008668:	00b500a3          	sb	a1,1(a0)
    8000866c:	00200713          	li	a4,2
    80008670:	1ae78a63          	beq	a5,a4,80008824 <__memset+0x1fc>
    80008674:	00b50123          	sb	a1,2(a0)
    80008678:	00300713          	li	a4,3
    8000867c:	18e78463          	beq	a5,a4,80008804 <__memset+0x1dc>
    80008680:	00b501a3          	sb	a1,3(a0)
    80008684:	00400713          	li	a4,4
    80008688:	1ae78263          	beq	a5,a4,8000882c <__memset+0x204>
    8000868c:	00b50223          	sb	a1,4(a0)
    80008690:	00500713          	li	a4,5
    80008694:	1ae78063          	beq	a5,a4,80008834 <__memset+0x20c>
    80008698:	00b502a3          	sb	a1,5(a0)
    8000869c:	00700713          	li	a4,7
    800086a0:	18e79e63          	bne	a5,a4,8000883c <__memset+0x214>
    800086a4:	00b50323          	sb	a1,6(a0)
    800086a8:	00700e93          	li	t4,7
    800086ac:	00859713          	slli	a4,a1,0x8
    800086b0:	00e5e733          	or	a4,a1,a4
    800086b4:	01059e13          	slli	t3,a1,0x10
    800086b8:	01c76e33          	or	t3,a4,t3
    800086bc:	01859313          	slli	t1,a1,0x18
    800086c0:	006e6333          	or	t1,t3,t1
    800086c4:	02059893          	slli	a7,a1,0x20
    800086c8:	40f60e3b          	subw	t3,a2,a5
    800086cc:	011368b3          	or	a7,t1,a7
    800086d0:	02859813          	slli	a6,a1,0x28
    800086d4:	0108e833          	or	a6,a7,a6
    800086d8:	03059693          	slli	a3,a1,0x30
    800086dc:	003e589b          	srliw	a7,t3,0x3
    800086e0:	00d866b3          	or	a3,a6,a3
    800086e4:	03859713          	slli	a4,a1,0x38
    800086e8:	00389813          	slli	a6,a7,0x3
    800086ec:	00f507b3          	add	a5,a0,a5
    800086f0:	00e6e733          	or	a4,a3,a4
    800086f4:	000e089b          	sext.w	a7,t3
    800086f8:	00f806b3          	add	a3,a6,a5
    800086fc:	00e7b023          	sd	a4,0(a5)
    80008700:	00878793          	addi	a5,a5,8
    80008704:	fed79ce3          	bne	a5,a3,800086fc <__memset+0xd4>
    80008708:	ff8e7793          	andi	a5,t3,-8
    8000870c:	0007871b          	sext.w	a4,a5
    80008710:	01d787bb          	addw	a5,a5,t4
    80008714:	0ce88e63          	beq	a7,a4,800087f0 <__memset+0x1c8>
    80008718:	00f50733          	add	a4,a0,a5
    8000871c:	00b70023          	sb	a1,0(a4)
    80008720:	0017871b          	addiw	a4,a5,1
    80008724:	0cc77663          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008728:	00e50733          	add	a4,a0,a4
    8000872c:	00b70023          	sb	a1,0(a4)
    80008730:	0027871b          	addiw	a4,a5,2
    80008734:	0ac77e63          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008738:	00e50733          	add	a4,a0,a4
    8000873c:	00b70023          	sb	a1,0(a4)
    80008740:	0037871b          	addiw	a4,a5,3
    80008744:	0ac77663          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008748:	00e50733          	add	a4,a0,a4
    8000874c:	00b70023          	sb	a1,0(a4)
    80008750:	0047871b          	addiw	a4,a5,4
    80008754:	08c77e63          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008758:	00e50733          	add	a4,a0,a4
    8000875c:	00b70023          	sb	a1,0(a4)
    80008760:	0057871b          	addiw	a4,a5,5
    80008764:	08c77663          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008768:	00e50733          	add	a4,a0,a4
    8000876c:	00b70023          	sb	a1,0(a4)
    80008770:	0067871b          	addiw	a4,a5,6
    80008774:	06c77e63          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008778:	00e50733          	add	a4,a0,a4
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	0077871b          	addiw	a4,a5,7
    80008784:	06c77663          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008788:	00e50733          	add	a4,a0,a4
    8000878c:	00b70023          	sb	a1,0(a4)
    80008790:	0087871b          	addiw	a4,a5,8
    80008794:	04c77e63          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00b70023          	sb	a1,0(a4)
    800087a0:	0097871b          	addiw	a4,a5,9
    800087a4:	04c77663          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	00a7871b          	addiw	a4,a5,10
    800087b4:	02c77e63          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00b70023          	sb	a1,0(a4)
    800087c0:	00b7871b          	addiw	a4,a5,11
    800087c4:	02c77663          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    800087c8:	00e50733          	add	a4,a0,a4
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	00c7871b          	addiw	a4,a5,12
    800087d4:	00c77e63          	bgeu	a4,a2,800087f0 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	00d7879b          	addiw	a5,a5,13
    800087e4:	00c7f663          	bgeu	a5,a2,800087f0 <__memset+0x1c8>
    800087e8:	00f507b3          	add	a5,a0,a5
    800087ec:	00b78023          	sb	a1,0(a5)
    800087f0:	00813403          	ld	s0,8(sp)
    800087f4:	01010113          	addi	sp,sp,16
    800087f8:	00008067          	ret
    800087fc:	00b00693          	li	a3,11
    80008800:	e55ff06f          	j	80008654 <__memset+0x2c>
    80008804:	00300e93          	li	t4,3
    80008808:	ea5ff06f          	j	800086ac <__memset+0x84>
    8000880c:	00100e93          	li	t4,1
    80008810:	e9dff06f          	j	800086ac <__memset+0x84>
    80008814:	00000e93          	li	t4,0
    80008818:	e95ff06f          	j	800086ac <__memset+0x84>
    8000881c:	00000793          	li	a5,0
    80008820:	ef9ff06f          	j	80008718 <__memset+0xf0>
    80008824:	00200e93          	li	t4,2
    80008828:	e85ff06f          	j	800086ac <__memset+0x84>
    8000882c:	00400e93          	li	t4,4
    80008830:	e7dff06f          	j	800086ac <__memset+0x84>
    80008834:	00500e93          	li	t4,5
    80008838:	e75ff06f          	j	800086ac <__memset+0x84>
    8000883c:	00600e93          	li	t4,6
    80008840:	e6dff06f          	j	800086ac <__memset+0x84>

0000000080008844 <__memmove>:
    80008844:	ff010113          	addi	sp,sp,-16
    80008848:	00813423          	sd	s0,8(sp)
    8000884c:	01010413          	addi	s0,sp,16
    80008850:	0e060863          	beqz	a2,80008940 <__memmove+0xfc>
    80008854:	fff6069b          	addiw	a3,a2,-1
    80008858:	0006881b          	sext.w	a6,a3
    8000885c:	0ea5e863          	bltu	a1,a0,8000894c <__memmove+0x108>
    80008860:	00758713          	addi	a4,a1,7
    80008864:	00a5e7b3          	or	a5,a1,a0
    80008868:	40a70733          	sub	a4,a4,a0
    8000886c:	0077f793          	andi	a5,a5,7
    80008870:	00f73713          	sltiu	a4,a4,15
    80008874:	00174713          	xori	a4,a4,1
    80008878:	0017b793          	seqz	a5,a5
    8000887c:	00e7f7b3          	and	a5,a5,a4
    80008880:	10078863          	beqz	a5,80008990 <__memmove+0x14c>
    80008884:	00900793          	li	a5,9
    80008888:	1107f463          	bgeu	a5,a6,80008990 <__memmove+0x14c>
    8000888c:	0036581b          	srliw	a6,a2,0x3
    80008890:	fff8081b          	addiw	a6,a6,-1
    80008894:	02081813          	slli	a6,a6,0x20
    80008898:	01d85893          	srli	a7,a6,0x1d
    8000889c:	00858813          	addi	a6,a1,8
    800088a0:	00058793          	mv	a5,a1
    800088a4:	00050713          	mv	a4,a0
    800088a8:	01088833          	add	a6,a7,a6
    800088ac:	0007b883          	ld	a7,0(a5)
    800088b0:	00878793          	addi	a5,a5,8
    800088b4:	00870713          	addi	a4,a4,8
    800088b8:	ff173c23          	sd	a7,-8(a4)
    800088bc:	ff0798e3          	bne	a5,a6,800088ac <__memmove+0x68>
    800088c0:	ff867713          	andi	a4,a2,-8
    800088c4:	02071793          	slli	a5,a4,0x20
    800088c8:	0207d793          	srli	a5,a5,0x20
    800088cc:	00f585b3          	add	a1,a1,a5
    800088d0:	40e686bb          	subw	a3,a3,a4
    800088d4:	00f507b3          	add	a5,a0,a5
    800088d8:	06e60463          	beq	a2,a4,80008940 <__memmove+0xfc>
    800088dc:	0005c703          	lbu	a4,0(a1)
    800088e0:	00e78023          	sb	a4,0(a5)
    800088e4:	04068e63          	beqz	a3,80008940 <__memmove+0xfc>
    800088e8:	0015c603          	lbu	a2,1(a1)
    800088ec:	00100713          	li	a4,1
    800088f0:	00c780a3          	sb	a2,1(a5)
    800088f4:	04e68663          	beq	a3,a4,80008940 <__memmove+0xfc>
    800088f8:	0025c603          	lbu	a2,2(a1)
    800088fc:	00200713          	li	a4,2
    80008900:	00c78123          	sb	a2,2(a5)
    80008904:	02e68e63          	beq	a3,a4,80008940 <__memmove+0xfc>
    80008908:	0035c603          	lbu	a2,3(a1)
    8000890c:	00300713          	li	a4,3
    80008910:	00c781a3          	sb	a2,3(a5)
    80008914:	02e68663          	beq	a3,a4,80008940 <__memmove+0xfc>
    80008918:	0045c603          	lbu	a2,4(a1)
    8000891c:	00400713          	li	a4,4
    80008920:	00c78223          	sb	a2,4(a5)
    80008924:	00e68e63          	beq	a3,a4,80008940 <__memmove+0xfc>
    80008928:	0055c603          	lbu	a2,5(a1)
    8000892c:	00500713          	li	a4,5
    80008930:	00c782a3          	sb	a2,5(a5)
    80008934:	00e68663          	beq	a3,a4,80008940 <__memmove+0xfc>
    80008938:	0065c703          	lbu	a4,6(a1)
    8000893c:	00e78323          	sb	a4,6(a5)
    80008940:	00813403          	ld	s0,8(sp)
    80008944:	01010113          	addi	sp,sp,16
    80008948:	00008067          	ret
    8000894c:	02061713          	slli	a4,a2,0x20
    80008950:	02075713          	srli	a4,a4,0x20
    80008954:	00e587b3          	add	a5,a1,a4
    80008958:	f0f574e3          	bgeu	a0,a5,80008860 <__memmove+0x1c>
    8000895c:	02069613          	slli	a2,a3,0x20
    80008960:	02065613          	srli	a2,a2,0x20
    80008964:	fff64613          	not	a2,a2
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00c78633          	add	a2,a5,a2
    80008970:	fff7c683          	lbu	a3,-1(a5)
    80008974:	fff78793          	addi	a5,a5,-1
    80008978:	fff70713          	addi	a4,a4,-1
    8000897c:	00d70023          	sb	a3,0(a4)
    80008980:	fec798e3          	bne	a5,a2,80008970 <__memmove+0x12c>
    80008984:	00813403          	ld	s0,8(sp)
    80008988:	01010113          	addi	sp,sp,16
    8000898c:	00008067          	ret
    80008990:	02069713          	slli	a4,a3,0x20
    80008994:	02075713          	srli	a4,a4,0x20
    80008998:	00170713          	addi	a4,a4,1
    8000899c:	00e50733          	add	a4,a0,a4
    800089a0:	00050793          	mv	a5,a0
    800089a4:	0005c683          	lbu	a3,0(a1)
    800089a8:	00178793          	addi	a5,a5,1
    800089ac:	00158593          	addi	a1,a1,1
    800089b0:	fed78fa3          	sb	a3,-1(a5)
    800089b4:	fee798e3          	bne	a5,a4,800089a4 <__memmove+0x160>
    800089b8:	f89ff06f          	j	80008940 <__memmove+0xfc>

00000000800089bc <__putc>:
    800089bc:	fe010113          	addi	sp,sp,-32
    800089c0:	00813823          	sd	s0,16(sp)
    800089c4:	00113c23          	sd	ra,24(sp)
    800089c8:	02010413          	addi	s0,sp,32
    800089cc:	00050793          	mv	a5,a0
    800089d0:	fef40593          	addi	a1,s0,-17
    800089d4:	00100613          	li	a2,1
    800089d8:	00000513          	li	a0,0
    800089dc:	fef407a3          	sb	a5,-17(s0)
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	b3c080e7          	jalr	-1220(ra) # 8000751c <console_write>
    800089e8:	01813083          	ld	ra,24(sp)
    800089ec:	01013403          	ld	s0,16(sp)
    800089f0:	02010113          	addi	sp,sp,32
    800089f4:	00008067          	ret

00000000800089f8 <__getc>:
    800089f8:	fe010113          	addi	sp,sp,-32
    800089fc:	00813823          	sd	s0,16(sp)
    80008a00:	00113c23          	sd	ra,24(sp)
    80008a04:	02010413          	addi	s0,sp,32
    80008a08:	fe840593          	addi	a1,s0,-24
    80008a0c:	00100613          	li	a2,1
    80008a10:	00000513          	li	a0,0
    80008a14:	fffff097          	auipc	ra,0xfffff
    80008a18:	ae8080e7          	jalr	-1304(ra) # 800074fc <console_read>
    80008a1c:	fe844503          	lbu	a0,-24(s0)
    80008a20:	01813083          	ld	ra,24(sp)
    80008a24:	01013403          	ld	s0,16(sp)
    80008a28:	02010113          	addi	sp,sp,32
    80008a2c:	00008067          	ret

0000000080008a30 <console_handler>:
    80008a30:	fe010113          	addi	sp,sp,-32
    80008a34:	00813823          	sd	s0,16(sp)
    80008a38:	00113c23          	sd	ra,24(sp)
    80008a3c:	00913423          	sd	s1,8(sp)
    80008a40:	02010413          	addi	s0,sp,32
    80008a44:	14202773          	csrr	a4,scause
    80008a48:	100027f3          	csrr	a5,sstatus
    80008a4c:	0027f793          	andi	a5,a5,2
    80008a50:	06079e63          	bnez	a5,80008acc <console_handler+0x9c>
    80008a54:	00074c63          	bltz	a4,80008a6c <console_handler+0x3c>
    80008a58:	01813083          	ld	ra,24(sp)
    80008a5c:	01013403          	ld	s0,16(sp)
    80008a60:	00813483          	ld	s1,8(sp)
    80008a64:	02010113          	addi	sp,sp,32
    80008a68:	00008067          	ret
    80008a6c:	0ff77713          	andi	a4,a4,255
    80008a70:	00900793          	li	a5,9
    80008a74:	fef712e3          	bne	a4,a5,80008a58 <console_handler+0x28>
    80008a78:	ffffe097          	auipc	ra,0xffffe
    80008a7c:	6dc080e7          	jalr	1756(ra) # 80007154 <plic_claim>
    80008a80:	00a00793          	li	a5,10
    80008a84:	00050493          	mv	s1,a0
    80008a88:	02f50c63          	beq	a0,a5,80008ac0 <console_handler+0x90>
    80008a8c:	fc0506e3          	beqz	a0,80008a58 <console_handler+0x28>
    80008a90:	00050593          	mv	a1,a0
    80008a94:	00001517          	auipc	a0,0x1
    80008a98:	e0c50513          	addi	a0,a0,-500 # 800098a0 <CONSOLE_STATUS+0x890>
    80008a9c:	fffff097          	auipc	ra,0xfffff
    80008aa0:	afc080e7          	jalr	-1284(ra) # 80007598 <__printf>
    80008aa4:	01013403          	ld	s0,16(sp)
    80008aa8:	01813083          	ld	ra,24(sp)
    80008aac:	00048513          	mv	a0,s1
    80008ab0:	00813483          	ld	s1,8(sp)
    80008ab4:	02010113          	addi	sp,sp,32
    80008ab8:	ffffe317          	auipc	t1,0xffffe
    80008abc:	6d430067          	jr	1748(t1) # 8000718c <plic_complete>
    80008ac0:	fffff097          	auipc	ra,0xfffff
    80008ac4:	3e0080e7          	jalr	992(ra) # 80007ea0 <uartintr>
    80008ac8:	fddff06f          	j	80008aa4 <console_handler+0x74>
    80008acc:	00001517          	auipc	a0,0x1
    80008ad0:	ed450513          	addi	a0,a0,-300 # 800099a0 <digits+0x78>
    80008ad4:	fffff097          	auipc	ra,0xfffff
    80008ad8:	a68080e7          	jalr	-1432(ra) # 8000753c <panic>
	...
