---
marp: true
---
# **Conditions and Loops**

---

## **Boolean Type**

---

### **Introduction**

In Python, **booleans** are a built-in data type that represent one of two values:
**True** and **False**

These are the two built-in constant of the **bool** type.

```python
type(True)   # <class 'bool'>
type(False)  # <class 'bool'>
```

Booleans are often used in:

* Comparisons
* Conditionals (**if**, **while**)
* Logical operations

---

### **Comparison Operators**

In Python, **comparison operators** are used to compare values. These operators return **Boolean values**: **True** or **False**.

| **Operator** | **Meaning**              | **Example**        | **Result**                |
| ------------ | ------------------------ | ------------------ | ------------------------- |
| **==**         | Equal to                 | **3 == 3**           | **True**                    |
| **!=**         | Not equal to             | **4 != 5**           | **True**                    |
| **>**          | Greater than             | **7 > 2**            | **True**                    |
| **<**          | Less than                | **1 < 0**            | **False**                   |
| **>=**         | Greater than or equal to | **5 >= 5**           | **True**                    |
| **<=**         | Less than or equal to    | **6 <= 3**           | **False**                   |

---

### **Example**

```python
x = 10
y = 5

print(x > y)      # True
print(x == y)     # False
```

You can also store boolean values in variables:

```python
is_tall = True
is_ready = False
is_positive=30>0
```

---

### **Operator on Objects**

| **Operator** | **Meaning**              | **Example**        | **Result**                |
| ------------ | ------------------------ | ------------------ | ------------------------- |
| **is**         | **Object identity**      | **a is b**           | **True** if same object     |
| **is not**     | Negated object identity  | **a is not b**       | **True** if not same object |
| **in**         | Membership               | **'a' in 'abc'**     | **True**                    |
| **not in**     | Negated membership       | **'z' not in 'abc'** | **True**                    |

---

#### **Comparison with None**

Use **is** and **is not** instead of **==** for **None** in order to test an variable is change to None or not. Because **None** is a singleton, and identity checks (**is**) are more precise than equality checks (**==**)

```python
x = None
y = 2
print(x is None) # True
print(x is not None) # False
print(y is None) # True
```

---

#### **Compare `is` vs `==`**

| **==** | Compares **values**                    |
| ---- | -------------------------------------- |
| **is** | Compares **identity** (memory address) |

```python
a = 1
b = 1
print(a == b)    # True (same contents)
print(a is b)    # False (different objects)
```

---

### **combination of statments**

You can also combination of statments

| Operator | Description | Example                    |
| -------- | ----------- | -------------------------- |
| **and**    | Logical AND | **True and False** → **False** |
| **or**     | Logical OR  | **True or False** → **True**   |
| **not**    | Logical NOT | **not True** → **False**       |

#### **Example Code**

```python
x = 10
y = 20
z = 30
print(x == y and z>y)     # False
print(x != y or y<z)     # True
print(not x >= y)     # True
```

---

#### **Chained Comparisons**

Python supports **chaining** of comparisons:

```python
x = 5
print(1 < x < 10)     # True
print(1 < x and x < 10)  # Same result, more verbose
```

---

#### **Boolean as a Subclass of Integer**

```python
True == 1     # True
False == 0    # True
True + True   # 2
False + 3     # 3
```

But for readability, it’s best to use **True** and **False** explicitly for logical operations rather than numeric 1 and 0.

---

## **if-elif-else: Making Decisions**

---

Build-in keywords **if**, **elif** and **else** are used to **control the flow** of your program based on conditions.

### **if Statement**

```python
age = 18

if age >= 18:
    print("You are an adult")
```

In Python, **curly braces `{}` are not used** for blocks like in some other languages (e.g., C, Java, JavaScript). Instead, Python uses **colen** and **indentation**.

---

### **if-else Statement**

```python
age = 16

if age >= 18:
    print("Adult")
else:
    print("Minor")
```

---

### **if-elif-else Chain**

```python
score = 75

if score >= 90:
    print("Grade: A")
elif score >= 80:
    print("Grade: B")
elif score >= 70:
    print("Grade: C")
else:
    print("Grade: F")
```

---

## **while - Loop Condition**

The **while** loop keeps running **as long as** the condition is **True**.

```python
count = 1

while count <= 5:
    print("Count is:", count)
    count += 1  # Same as count = count + 1
```

**Output**:

```bash
Count is: 1
Count is: 2
Count is: 3
Count is: 4
Count is: 5
```

---

### **Infinite Loop**

If you forget to change the condition, the loop can run forever!

```python
# WARNING: This loop never stops!
while True:
    print("Hello")  # Press Ctrl + C to stop in terminal
```

---

### **Controlling a loop**

#### **break** — Stop the Loop Early

```python
x = 1

while x <= 10:
    if x == 5:
        break  # Exit the loop when x is 5
    print(x)
    x += 1
```

**Output**:

```bash
1
2
3
4
```

---

### **continue — Skip One Iteration**

```python
x = 0

while x < 5:
    x += 1
    if x == 3:
        continue  # Skip the rest of the loop for x = 3
    print(x)
```

**Output**:

```bash
1
2
4
5
```

---

## **for - Loop**

In Python, the **for** loop is used to iterate over a sequence (like a str that is a sequence of charechtors). Here's how it works:

```python
for variable in iterable:
    # code block
```

---

### **Examples**

#### 1. For through a **string**

```python
for letter in "hello":
    print(letter)
```

### 2. Build a **reversed string**

```python
text = "hello"
reversed_text = ""

for char in text:
    reversed_text = char + reversed_text

print(reversed_text) # Output: olleh
```

---

#### 3. **for** with **break** and **continue**

```python
word = "Python"
for char in word:
    if char == "y":
        break  
    print(char, end="_") # P_
```

```python
word = "Python"
for char in word:
    if char == "y":
        continue  
    print(char, end="_") # P_t_h_o_n_
```

---

## **Summary Table**

| Concept    | Example           | Description                   |
| ---------- | ----------------- | ----------------------------- |
| Comparison | **x > y**, **x == y** | Compares values               |
| Boolean    | **True**, **False**   | Logical values                |
| **if**       | **if x > 0:**       | Run code if condition is True |
| **elif**     | **elif x == 0:**    | Check another condition       |
| **else**     | **else:**           | Run if all above are False    |
| **while**    | Repeat while condition is true       | **while x < 5:**        |
| **break**    | Exit the loop immediately            | **if x == 5: break**    |
| **continue** | Skip current loop and go to next one | **if x == 3: continue** |

---

## **Practice Tasks**

---

### **Practice Task 1**

Write a program that:

1. Asks the user to enter a number
2. Checks if the number is: **Positive**, **Zero** or **Negative**

```python
number = float(input("Enter a number: "))

if number > 0:
    print("The number is positive")
elif number == 0:
    print("The number is zero")
else:
    print("The number is negative")
```

---

### **Practice Task 2**

Write a program that:

1. Asks the user to guess a secret number between 1 and 10
2. Repeats until the user guesses correctly

```python
secret = 7
guess = None

while guess != secret:
    guess = int(input("Guess the number (1-10): "))
    if guess == secret:
        print("Correct!")
    else:
        print("Try again!")
```

---

### **Practice Task 3**

Write a program that:

1. Asks the user to enter a number

2. Count the number of "o"s or "O"s in a given text

```python
text = str(input("Enter a text: "))
count = 0

for char in text:
    if char == "o":
        count = count + 1
    elif char == "O":
        count = count + 1

print(f'Number of "o": {count}')
```

---

#### **Practice Task 4**

Write a program to:

1. Asks the user to enter a number
2. classify someone as **child, adult, or old** based on their age:
If age is **less than 18**, print "child". If age is **between 18 and 64** (inclusive of 18), print "adult". Otherwise (65 and above), print "old".

```python
age = int(input("Enter your age: ")) 

if age < 18:
    print("You are a child.")
elif 18 <= age < 65:
    print("You are an adult.")
else:
    print("You are old.")
```
