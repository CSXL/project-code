---
title: "HW 1.2 - All Python Datatypes"
author: "Adam Blumenfeld"
date: "June 19th, 2025"
---

# HW 1.2 - All Python Datatypes

## Instructions

1. **Read the [Python Data Types](https://docs.python.org/3/library/stdtypes.html) documentation** to familiarize yourself with the different data types available in Python.

2. **Complete the following exercises** to practice using these data types.

3. **Submit your code** in a single Python file named `hw_1_2.py`.

## Exercises

### Exercise 1: Basic Data Types

Create variables of each of the following data types and print their values:

- Integer
- Float
- String
- Boolean

```python
# Exercise 1: Basic Data Types
integer_var = 42
float_var = 3.14
string_var = "Hello, World!"
boolean_var = True
print("Integer:", integer_var)
print("Float:", float_var)
print("String:", string_var)
print("Boolean:", boolean_var)
```

### Exercise 2: Collections

Create a list, tuple, and dictionary with the following data:
- List: A list of your favorite fruits
- Tuple: A tuple containing three different colors
- Dictionary: A dictionary mapping country names to their capitals

```python
# Exercise 2: Collections
favorite_fruits = ["Apple", "Banana", "Cherry"]
colors_tuple = ("Red", "Green", "Blue")
country_capitals = {
    "USA": "Washington, D.C.",
    "France": "Paris",
    "Japan": "Tokyo"
}
print("Favorite Fruits:", favorite_fruits)
print("Colors Tuple:", colors_tuple)
print("Country Capitals:", country_capitals)
```

### Exercise 3: Type Conversion

Write a function that takes a string input and converts it to an integer, float, and boolean. Handle any exceptions that may arise during conversion.

```python
# Exercise 3: Type Conversion
def convert_types(input_string):
    try:
        int_value = int(input_string)
    except ValueError:
        int_value = None

    try:
        float_value = float(input_string)
    except ValueError:
        float_value = None

    boolean_value = input_string.lower() in ['true', '1', 'yes']

    return int_value, float_value, boolean_value
# Example usage
input_str = "123"
int_val, float_val, bool_val = convert_types(input_str)
print("Converted Values:")
print("Integer:", int_val)
print("Float:", float_val)
print("Boolean:", bool_val)
```

### Exercise 4: Nested Data Structures

Create a nested data structure that includes a list of dictionaries. Each dictionary should represent a person with their name, age, and a list of hobbies.

```python
# Exercise 4: Nested Data Structures
people = [
    {
        "name": "Alice",
        "age": 30,
        "hobbies": ["Reading", "Hiking", "Cooking"]
    },
    {
        "name": "Bob",
        "age": 25,
        "hobbies": ["Gaming", "Cycling"]
    },
    {
        "name": "Charlie",
        "age": 35,
        "hobbies": ["Photography", "Traveling"]
    }
]

print("People Data Structure:")
for person in people:
    print(f"Name: {person['name']}, Age: {person['age']}, Hobbies: {', '.join(person['hobbies'])}")
```

### Exercise 5: Set Operations

Create a set of your favorite animals and perform the following operations:
- Add a new animal to the set
- Remove an animal from the set

```python
# Exercise 5: Set Operations
favorite_animals = {"Dog", "Cat", "Elephant"}
favorite_animals.add("Dolphin")
favorite_animals.remove("Cat")
print("Favorite Animals Set:", favorite_animals)
```
### Exercise 6: String Manipulation

Write a function that takes a string and returns a dictionary with the count of each character in the string (case-insensitive).

```python
# Exercise 6: String Manipulation

def character_count(input_string):
    count_dict = {}
    for char in input_string.lower():
        if char.isalpha():  # Count only alphabetic characters
            count_dict[char] = count_dict.get(char, 0) + 1
    return count_dict

# Example usage
input_str = "Hello, World!"
char_count = character_count(input_str)
print("Character Count:", char_count)
```

### Exercise 7: Date and Time

Import the `datetime` module and create a function that returns the current date and time in a formatted string. Notice how we import the datetime module, you can read more about it in the [Python documentation](https://docs.python.org/3/library/datetime.html).

```python
# Exercise 7: Date and Time
from datetime import datetime
def current_datetime():
    now = datetime.now()
    formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")
    return formatted_date

# Example usage
current_time = current_datetime()
print("Current Date and Time:", current_time)
```
