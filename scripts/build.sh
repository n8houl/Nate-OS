#!/bin/bash

export OS_ROOT='/home/'$USER'/Desktop/Nate-OS'
export SRC=$OS_ROOT'/src'
export SCRIPTS=$OS_ROOT'/scripts'
export BUILD=$OS_ROOT'/build'

nasm -f elf32 $SRC/kernel.asm -o $BUILD/kasm.o
gcc -m32 -c $SRC/kernel.c -o $BUILD/kc.o -ffreestanding
ld -m elf_i386 -T $SCRIPTS/link.ld -o $BUILD/kernel.bin $BUILD/kasm.o $BUILD/kc.o
rm $BUILD/kasm.o $BUILD/kc.o
qemu-system-i386 -kernel $BUILD/kernel.bin
