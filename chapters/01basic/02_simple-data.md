---
marp: true
---

# Simple Data Types

---

## Numeric Type

In Python, **numeric types** are built-in data types used to store and manipulate numbers. There are three main numeric types:

| Type      | Description                        | Example         |
| --------- | ---------------------------------- | --------------- |
| **int**     | Integer numbers                    | **10**, **-5**, **0** |
| **float**   | Floating-point (decimal) numbers   | **3.14**, **-0.01** |
| **complex** | Complex numbers (real + imag part) | **2 + 3j**, **-1j** |

---

### **int** —Integer

* Whole numbers (no decimal point)
* Unlimited precision (arbitrary size)

```python
x = 42
print(type(x))  # <class 'int'>

big = 10**100   # Very large integer
print(type(big)) # <class 'int'>
```

---

### **float** — Floating-Point

* Numbers with a decimal point
* Internally based on IEEE 754 double-precision (64-bit)

```python
pi = 3.14159
print(type(pi))  # <class 'float'>
div = 1 / 3      
print(div)  # 0.333...
```

**Special float values:**

```python
float('inf')     # ∞
float('-inf')    # -∞
float('nan')     # Not a Number
```

---

### **complex** —Complex Numbers

* Numbers with **real** and **imaginary** parts
* Written as **a + bj** (use **j**, not **i**)

```python
z = 2 + 3j
print(type(z))     # <class 'complex'>
print(z.real)      # 2.0
print(z.imag)      # 3.0
```

---

## Text Sequence Type

In Python, the **str** type represents **textual data** — it’s one of the most commonly used built-in types. In fact in a **str** is an **immutable sequence of Unicode characters**.

```python
name = "Sam"
print(type(name))  # <class 'str'>
```

#### Creating Strings

```python
s1 = 'hello'
s2 = "world"
```

---

#### Multiline Strings

```python
poem = """Roses are red,
Violets are blue,
Python is awesome,
And so are you."""
```

---

### String Formatting

We can embed variabels in string and print it.

```python
name = "Sam"
age = 30

# .format()
print("My name is {} and I am {}".format(name, age))

# f-string (Python 3.6+)
print(f"My name is {name} and I am {age}")

```

---

### Immutability

Strings are **immutable**. It means you can not modify (delete,add,update) any part of a string:

```python
s = "hello"
s[0] = "H"  # TypeError
```

To modify a string, you must create a new one:

```python
s = "hello"
s = "H" + s[1:]  # 'Hello'
```

---

## Operations

---

### String Operators

Here's a **basic operation on strings** in Python, organized in a readable table format:


| **Operation**    | **Description**                                | **Example**            | **Output**      |
| ---------------- | ---------------------------------------------- | ---------------------- | --------------- |
| **+**            | Concatenation – combines two strings           | **'Hello' + ' World'** | **'Hello World'** |
| **\***           | Repetition – repeats a string                  | **'Ha' * 3**           | **'HaHaHa'**      |
| **len(s)**       | Returns the length of the string               | **len('hello')**       | **5**             |
| **s[i]**         | Indexing – gets character at index i           | **'hello'[1]**         | **'e'**           |
| **s[start:end]** | Slicing – substring from **start** to **end-1**    | **'hello'[1:4]**       | **'ell'**         |
| **in**           | Membership test – checks if a substring exists | **'lo' in 'hello'**     | **True**          |
| **not in**       | Negated membership test                        | **'z' not in 'hello'** | **True**          |

---

#### Notes:

* **Indexing** starts at **0**, so **'hello'[1]** is the second character, **'e'**.
* **Slicing** does **not** include the character at the **end** index.
* The **in** and **not in** operations are useful in conditionals and loops.

---

### Numeric Operators

Operators Supported by All Numeric Types:

* Arithmetic: **+**, **-**, *****, **/**, **//**, **%**, ```
* Comparison: **==**, **!=**, **<**, **>**, **<=**, **>=**

```python
a = 5
b = 2
print(a + b)    # 7
print(a / b)    # 2.5
print(a // b)   # 2 (floor division)
```

Here’s a clean and complete table of **numeric operations** in Python, including their **description**, **example result**, and **notes**, based on the built-in types: **int**, **float**, and **complex**.

---

#### **Numeric Operations Table in Python**


| **Operation**     | **Result**                               | **Notes**                            |
| ----------------- | ---------------------------------------- | ------------------------------------ |
| **-x**              | Negation of **x**                          | –                                    |
| **+x**              | **x** unchanged                            | Unary plus                           |
| **x + y**           | Sum of **x** and **y**                       | Works for all numeric types          |
| **x - y**           | Difference of **x** and **y**                | –                                    |
| **x * y**           | Product of **x** and **y**                   | –                                    |
| **x \*\* y** or **pow(x, y)**     | **x** to the power **y**           | Exponentiation (5)                   |
| **x / y**           | Quotient of **x** and **y** (float)          | Always returns float                 |
| **x // y**          | Floored quotient of **x** and **y**          | Discards fractional part             |
| **x % y**           | Remainder of **x / y**                     | Result has same sign as **y**          |
| **divmod(x, y)**    | Returns **(x // y, x % y)**                | Tuple result -> (x//y,x%y)           |
| **abs(x)**          | Absolute value of **x**                    | Also works for complex numbers       |
| **round(x,d)**      | Rounds **x** to the nearest integer        | e.g., **round(2.337,2)** -> 2.34        |
| **int(x)**          | Remove decimal part of **x**               | e.g., **int(-2.93)** -> -2        |
| **c.conjugate()**   | Conjugate of complex number **c**          | e.g., **(2+3j).conjugate() = 2-3j**    |

---

**Notes:**

1. **//** performs **floor division**, e.g. **5 // 2 = 2**, **-5 // 2 = -3**
2. **%** uses Python’s **modulus rule**: the result has the **same sign as the divisor (**y**)**
3. **int(3.8)** → **3**; **int('7')** → **7**; **int('abc')** → raises error
4. **float('3.14')** → **3.14**
5. **pow(2, 3)** → **8**; works like **2 ** 3**; can also do modular exponentiation: **pow(2, 3, 5)** → **3**
6. **int()**, **float()**, and **complex()** are constructors for their respective types
7. You can find official documentation on [https://docs.python.org](https://docs.python.org/3/library/stdtypes.html#numeric-types-int-float-complex)
