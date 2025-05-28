---
title: "HW 1.1 - Python Data Types"
author: "Adam Blumenfeld"
date: "May 27, 2025"
---

# Assignment Objective

Tour objective is to learn what data types are in more depth, and what they represent.

## Outside Materials

For this course, we will be supplementing the material covered with the baseline information covered in [Crash Course Computer Science](https://www.youtube.com/watch?v=tpIctyqH29Q&list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo). Aim to complete up to video 10 before our next lesson, feel free to listen to them in the background of what you are doing.

# What is a data type?

A data type (or "type") is a grouping or classification of data values. This has close ties to mathmatics. For example, recall the set of all integers: $\mathbb{Z} \in \{..., -2, -1, 0, 1, 2, ...\}$. We also went over string types in Python, designated in code with double or single quotes (`'Hello, World' or "Hello, World"`).

Below is a code example of this concept:
```py
student_age = 18
drinking_age: int = 21

if student_age < drinking_age:
  print("Bouncer: Sorry, you can't drink, you are only " + str(student_age))
else:
  print("Bouncer: Welcome in!")
```

> NOTE: Remember, the interepreter is literal about code execution, it doesn't know what a student is and what drinking is, it only knows what instructions we gave it.

In this program, we created a variable named `student_age` and set it to an integer, `18`. Python is a dynamically-typed language, meaning varaible's types are checked at runtime (not compiled time). We can also change variables' types during the course of the program. So, when the interpreter (the program that runs the python code), goes over this line, it sees a variable assignment (`student_age` to `18`).

Then we set a variable `drinking_age` to `21`. Notice we added a _type hint_ to the variable. Type hinting is completely optional in Python, it helps our linters (stuff that checks our code before we run it) help us enforce types.

Then we have an example of control flow, if the contents of variable `student_age` is less than the contents of variable `drinking_age`, it will execute the code under the control block (the print statement), if it's not (`else`), we will execute the code under the control block (the other print statement). 

Notice when I described this program, I detailed everything very literally instead of saying something like "it checks if the student is over 21", this is the summary of what the program does, however, _when you read Python programs you should read them like the interpreter_.

We then do an example of type casting in the print statement. **I want you to look up "type casting" in Python, thouroughly read the documentation, and write a summary of what you understand it is. If you get stuck on a subconcept, read the documentation for that concept as well until you understand it.**

**Now I'd like you to write this program in Repl.it, however change the drinking age to 16, and test two student ages (12 and 21).**
