---
marp: true
---

# Basic Concepts

---

## Variables

A variable holds a value. You can store strings, numbers, or any data.

```python
city = "Berlin"
population = 3850000
area = 891.8        
is_capital = True
rivers=None
```

- **None** represents the absence of a value. This is useful when you want to define a variable before assigning a real value.
- Python is **case-sensitive**. This means that variable names, function names, and identifiers with different capitalizations are treated as completely different.

---

### common Python data types

Here’s a table of **common Python data types** with their descriptions and examples:

| Type           | Class Name    | Description                   | Example                       |
|:-------------- | :------------ | :---------------------------- | :---------------------------- |
| String         | **str**       | sequence of characters        | **"hello"**, **'Python'**     |
| Integer        | **int**       | Whole numbers                 | **42**, **-3**                |
| Floating-point | **float**     | Decimal numbers               | **3.14**, **-0.01**           |
| Boolean        | **bool**      | Logical values                | **True**, **False**           |
| None           | **NoneType**  | Represents no value           | **None**                      |

---

## Comments

In Python, **comments** are used to explain the code and are **ignored during execution**.

- Single-line comment

```python
# This prints "Hello"
```

- Inline comment

```python
x = 5  # Store 5 in x
```

- Multi-line comment

```python
"""
This is a multi-line comment
or documentation block.
"""
```

---

## Display Output

In Python, **print()** is a built-in function used to display output on the screen (usually in the terminal or console). The basic syntax is

```python
print(object1, object2, ..., sep=' ', end='\n')
```

### Common Uses

- **Print one or multiple items or variable**

```python
print("Hello, world!")
print(42)
print("Age:", 25) # Print one or multiple items
city = "Berlin"
print("City: ", city) # Print variable
```

---

- **Change separator**

```python
print("A", "B", "C", sep="-") # Output: A-B-C
```

- **Change end character**

```python
print("Hello", end=" ")
print("World")
# Output: Hello World
```

---

### Formatted output

### 1. Using **f-string** (Recommended)

```python
print(f"{city} is with a population of {population:,} and an area of {area:.1f} km².")
```

### 2. Using **`str.format()`**

```python
print("{} is with a population of {:,} and an area of {:.1f} km².".format(city, population, area))
```

### 3. Using **`%` formatting** (old style)

```python
print("%s is with a population of %,d and an area of %.1f km²." % (city, population, area))
```

Output:

```bash
Berlin is with a population of 3,850,000 and an area of 891.8 km².
```

---

## Check Data Type

---

The **type()** function in Python is used to check the **data type** of a variable or value.The Syntax is

```python
type(object)
```

### Examples

```python
print(type(42))           # <class 'int'>
print(type(3.14))         # <class 'float'>
print(type("hello"))      # <class 'str'>
print(type(None))         # <class 'NoneType'>
print(type(True))         # <class 'bool'>
print(type(print))        # <class 'builtin_function_or_method'>
```

---

The **isinstance()** function in Python is used to **check if a value is an instance of a specific type or class**. The Syntax is

```python
isinstance(object, <class_name>)
```

### Examples

```python
x = 42
s = "hello"
print(isinstance(x, int))     # True
print(isinstance(x, float))   # False
print(isinstance(s, str))     # True
print(isinstance(s, bool))    # False
```

---

## Type Conversion

In Python, **Type Conversion** means converting a value from one data type to another. Two Types of Type Conversion are:

| Type         | Description                             |
| ------------ | --------------------------------------- |
| **Implicit** | Done automatically by Python            |
| **Explicit** | Done manually using functions (casting) |

---

### 1. Implicit Type Conversion

Python automatically converts types during expressions:

```python
x = 5      # int
y = 2.0    # float
z = x + y  # int + float → float
print(z)   # 7.0
print(type(z))  # <class 'float'>
```

---

### 2. Explicit Type Conversion (Casting)

You can use built-in functions (class name):

| Function  | Converts to | Example                           |
| --------- | ----------- | --------------------------------- |
| **int()**   | Integer     | int("5") → 5                  |
| **float()** | Float       | float("3.14") → 3.14          |
| **str()**   | String      | str(10) → "10"                |
| **bool()**  | Boolean     | bool(0) → False               |

---

### Examples

```python
a = "123"
b = int(a)       # Now b is 123 as int

c = 3.99
d = int(c)       # → 3 (truncates decimal)

e = 0
print(bool(e))   # False
```

---

## Get User Input

The **input()** function in Python is used to **take input from the user** as a **string**.

### Syntax

```python
variable = input("Prompt message")
```

- The message inside **input()** is optional and is shown to the user.
- The return value is always a **string** (`str`), even if the user types a number.

---

### Examples

#### 1. **Get user's name**

```python
name = input("What is your name? ")
print("Hello, " + name)
```

#### 2. **Get number input**

```python
age = input("Enter your age: ")
print(type(age))   # <class 'str'>
```

---

#### 3. **Convert input to integer**

```python
age = int(input("Enter your age: "))
print(age + 5)
```

#### 4. **Multiple inputs**

```python
x, y = input("Enter two numbers separated by space: ").split()
print(x, y)
```

---

### Common Mistake

Always validate or cast carefully.

```python
# This will cause an error if input is not a number
num = int(input("Enter a number: "))
```

---

## Practice Task

```python
# Define a constant for the value of Pi (used in circle area calculation)
PI = 3.14159

# Ask the user to enter their name and store it as a string
name = input("Enter your name: ")

# Ask the user to enter the radius, convert the input from string to float
radius = float(input("Enter the radius of a circle: "))

# Calculate the area of the circle using the formula: area = π * r^2
area = PI * radius * radius

# Greet the user by name
print("Hello", name)

# Display the calculated area of the circle
print("Circle area is:", area)
```
