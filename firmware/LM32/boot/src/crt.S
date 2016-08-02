.globl _start

.text
_start:
xor r0, r0, r0
mvhi r1, 0
mvhi r2, 0
mvhi r3, 0
mvhi r4, 0
mvhi r5, 0
mvhi r6, 0
mvhi r7, 0
mvhi r8, 0
mvhi r9, 0
mvhi r10, 0
mvhi r11, 0
mvhi r12, 0
mvhi r13, 0
mvhi r14, 0
mvhi r15, 0
mvhi r16, 0
mvhi r17, 0
mvhi r18, 0
mvhi r19, 0
mvhi r20, 0
mvhi r21, 0
mvhi r22, 0
mvhi r23, 0
mvhi r24, 0
mvhi r25, 0
mvhi r26, 0
    
mvhi sp, hi(_fstack)
ori sp, sp, lo(_fstack)

mv fp,r0

mvhi r1, hi(_fbss)
ori r1, r1, lo(_fbss)
mvhi r2, hi(_ebss)
ori r2, r2, lo(_ebss)

1:
bge r1, r2, 2f
sw (r1+0), r0
addi r1, r1, 4
bi 1b
2:

calli main

mvhi r1, 0xdead
ori r2, r0, 0xbeef
sw (r1+0), r2
