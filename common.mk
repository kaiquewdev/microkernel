# Architecture to build for: x86
ARCH := x86
include $(ROOTDIR)/$(ARCH).mk

# Common configuration for GCC
CC := gcc
SRCFILES := $(shell find -L . -maxdepth 1 -type f -name "*.c")
OBJFILES := $(patsubst %.c,%.o,$(SRCFILES))
WARNINGS := -Wall -Wextra -ansi -pedantic -Wno-unused-parameter -Wshadow -Wpointer-arith -Wcast-align -Wwrite-strings -Wmissing-prototypes -Wmissing-declarations -Wredundant-decls -Wnested-externs -Winline -Wno-long-long -Wuninitialized -Wstrict-prototypes
CFLAGS := -static -nostdlib -nostdinc -fno-builtin -fno-stack-protector -nostartfiles -nodefaultlibs -ffreestanding -fstrength-reduce -finline-functions -std=c99 $(WARNINGS)

# Assembler
ASM := nasm
ASMFLAGS := -felf

# Archive/library manager
AR := ar
ARFLAGS := rvs

# Linker
LD := ld

# Virtual machine - emulator: qemu, bochs
VM := qemu