#ifndef LIB_SYSCALL_H
#define LIB_SYSCALL_H

#include "kernel/stdint.h"

#define SYSCALL_SLOTS 256
#define SYSCALL_PUTS 0x00
#define SYSCALL_PUTC 0x01

#define DECL_SYSCALL0(fn) uint32_t fn();
#define DECL_SYSCALL1(fn,p1) uint32_t fn(p1);
#define DECL_SYSCALL2(fn,p1,p2) uint32_t fn(p1,p2);
#define DECL_SYSCALL3(fn,p1,p2,p3) uint32_t fn(p1,p2,p3);
#define DECL_SYSCALL4(fn,p1,p2,p3,p4) uint32_t fn(p1,p2,p3,p4);
#define DECL_SYSCALL5(fn,p1,p2,p3,p4,p5) uint32_t fn(p1,p2,p3,p4,p5);

DECL_SYSCALL1(syscall_puts, const int8_t *)
DECL_SYSCALL1(syscall_putc, const int8_t)

#endif
