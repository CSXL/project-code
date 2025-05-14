---
title: "HW 1.0 - Introduction to Python with an Emphasis on Cyber"
author: "Adam Blumenfeld"
date: "May 14, 2025"
---

# Assignment Objective

Your objective is to walk through some basic python concepts and data types.

# The Interpreter

Python is an interpreted "scripting" language, this means that instead of compiling down to bytecode in an executable, a python script is passed directly from a Python script to an interpreter program when ran.

## Context

Take the following program for example:

```py
a = 3
b = 5

print(a + b) # this prints 8
```

I assign the value `3` to the `a` variable, `5` to the `b` variable, and then print the result of the addition of these two variables. This is the same program in C:

```c
#include <stdio.h>

int main()
{
  int a = 3; // defines a new integer variable "a" and then assign 3 to it
  int b = 5;

  printf("%d", a + b); // Formats the string "%d[igit]" with the result of a + b

  return 0;
}
```

Notice how in the c program we needed to explictly specify the integer (`int`) type for the `a` and `b` variables, versus in python it was implicit. This is because python is a dynamically typed language. As it is interpreted, the types are determined at runtime, versus in C the types are determined and assigned at compile time.

## Assignment

Create a Python program that defines two variables: `age` at `20` and `years_elapsed` at `5`. Print the result of these two variables added together.

