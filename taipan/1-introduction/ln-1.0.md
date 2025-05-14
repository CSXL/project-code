---
title: "LN 1.0 - Introduction to Python with an Emphasis on Cyber"
author: "Adam Blumenfeld"
date: "May 13, 2025"
---

# Introduction

This course is intended for people with an intermediate understanding of cybersecurity to learn Python. Lecture notes are meant to supplement the live lecture, complementing the material and providing any needed clarifications.

## Nomenclature

In the lecture we use the terms "coding," "programming," and "software engineering" to differentiate between sophistication of development: "coding" meaning writing script to be interpreted by a computer, "programming" meaning writing code with a structure and integrated project (we showed a UML diagram), and "software engineering" referring to dealing with distributed systems, cloud architecture, and complex design patterns. However, in practice, these terms are used interchangeably amoung others.

## Applications of Python to Cyber

Python is great for automating pentesting, malware analysis through metadata extraction and reverse engineering (`pefile` to analyze executable files), incident response (log parsing, anomaly detection, memory forensics, etc.), network security and scanning, development of custom tools and extensions, and threat detection using machine learning (anomaly detection with XGBoost for example).

# Levels of Abstraction

Programming languages are used to translate natural language actions to processes executed by a computer. Different languages have tradeoffs usually from their level of abstraction from the underlying hardware.

For example, take the following program in assembly:

```asm
; File: hello_world.asm
; A "Hello, World!" program for AMD64 architecture,
; using 64-bit Linux system calls.

SECTION .data   ; Section for initialized data
  hello_string db "Hello, World!", OAh  ; The string, OAh is a newline
  hello_len equ $ - hello_string        ; Calculate length of the string

SECTION .text   ; Section for executable code
  GLOBAL _start ; Make _start symbol visible to the linker

_start:
  ; sys_write system call
  mov rax, 1            ; syscall number for sys_write
  mov rdi, 1            ; file descriptor 1 (stdout)
  mov rsi, hello_string ; pointer to the string to write
  move rdx, hello_len   ; number of bytes to write
  syscall               ; make the system call
  
  ; sys_exit system call
  mov rax, 60
  mov rdi, 0
  syscall
```

This program uses the [AMD64/x86-64 architecture](https://www.amd.com/content/dam/amd/en/documents/processor-tech-docs/programmer-references/24594.pdf). We manually load our CPU registers with our system call arguments and then execute them. The system call we execute is directly from the linux kernel, so it's operating system dependent, and we are manually handling our program exit as well.

```c
// File: hello_world.c
// A "Hello, World!" program in C, not platform dependent.
#include <stdio.h>

int main() {
  puts("Hello, World!");
  return 0;
}
```

As you can see, we now have our standard library IO abstraction from the hardware, and we aren't manually calculating the length of the "Hello, World!" string. The gcc compiler will convert this to an object format, and then link it into a platform-specific executable (shown in the repository). Now, let's try python.

```py
print("Hello, World!")
```

One liner! This python program is interpreted, meaning another program runs it instead of the instructions being packed in an executable. That means that if you try to send a python script to someone they must also have the python interpreter installed. It also means performance for python data types and operations (like native lists, hashmaps, loops) are much slower than their counterparts.

Within malware analysis you may often have to break down obfuscated code and binaries, reverse engineering the program into it's core instructions to figure out it's behavior. This is why it's important for you to read as much code as possible at different levels of abstraction to get the pattern recognition required to understand these complex cases.
