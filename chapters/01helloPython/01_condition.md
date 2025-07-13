---
marp: true
---
# Conditions

---

## Comparing Numbers

Python uses **comparison operators** to compare values.

These expressions return a **Boolean value**: **True** or **False**.

| Operator | Meaning               | Example            |
| -------- | --------------------- | ------------------ |
|  **==**      | Equal to              |  3 == 3  →  True   |
|  **!=**      | Not equal to          |  3 != 4  →  True   |
|  **>**       | Greater than          |  5 > 2  →  True    |
|  **<**       | Less than             |  2 < 5  →  True    |
|  **>=**      | Greater than or equal |  5 >= 5  →  True   |
|  **<=**      | Less than or equal    |  4 <= 3  →  False  |

---

### Example

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

## **IF-ELIF-ELSE**: Making Decisions

---

These are used to **control the flow** of your program based on conditions.

### **if** Statement

```python
age = 18

if age >= 18:
    print("You are an adult")
```

---

### **if-else** Statement

```python
age = 16

if age >= 18:
    print("Adult")
else:
    print("Minor")
```

---

### **if-elif-else** Chain

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

## **While** - Loop Condition

The **while** loop keeps running **as long as** the condition is **True**.

```python
count = 1

while count <= 5:
    print("Count is:", count)
    count += 1  # Same as count = count + 1
```

Output:

```bash
Count is: 1
Count is: 2
Count is: 3
Count is: 4
Count is: 5
```

---

### Infinite Loop

If you forget to change the condition, the loop can run forever!

```python
# WARNING: This loop never stops!
while True:
    print("Hello")  # Press Ctrl + C to stop in terminal
```

---

### Controlling a loop

---

#### **break** — Stop the Loop Early

```python
x = 1

while x <= 10:
    if x == 5:
        break  # Exit the loop when x is 5
    print(x)
    x += 1
```

Output:

```bash
1
2
3
4
```

---

### **continue** — Skip One Iteration

```python
x = 0

while x < 5:
    x += 1
    if x == 3:
        continue  # Skip the rest of the loop for x = 3
    print(x)
```

Output:

```bash
1
2
4
5
```

---

## Summary Table

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

## **For** - Loop

In Python, the **for** loop is used to iterate over a sequence (like a str that is a sequence of charechtors). Here's how it works:

### Syntax

```python
for variable in iterable:
    # code block
```

---

### Examples

#### For through a **string**

```python
for letter in "hello":
    print(letter)
```

#### **For** with **break** and **continue**

```python
for i in range(5):
    if i == 3:
        break  # exits the loop
    print(i)

for i in range(5):
    if i == 3:
        continue  # skips 3
    print(i)
```

---

#### For with **else**

```python
for i in range(3):
    print(i)
else:
    print("Loop finished!")
```

---

## Practice Tasks

---

### Practice Task 1

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

### Practice Task 2

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
