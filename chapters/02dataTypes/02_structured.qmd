# Structured Data Types


Structured data types let you **store multiple values** together (like collections or containers).

## Immutable Structured Types

Once created, these cannot be changed (no item modification, addition, or deletion).

| Type    | Description                    | Example     |
| ------- | ------------------------------ | ----------- |
| **str**   | Text (sequence of characters)  | **"hello"**   |
| **tuple** | Ordered, fixed-size collection | **(1, 2, 3)** |
| **range** | Sequence of numbers            | **range(5)**  |

#### Examples:

```python
# String
text = "hello"
print(text[0])     # Output: h

# Tuple
point = (3, 4)
print(point[1])    # Output: 4

# Range
nums = range(3)
print(list(nums))  # Output: [0, 1, 2]
```

## Mutable Structured Types

These can be **changed** after creation (add, remove, or update items).

| Type        | Description                                   | Example               |
| ----------- | --------------------------------------------- | --------------------- |
| **list**      | Ordered, changeable collection                | **[1, 2, 3]**           |
| **set**       | Unordered, unique items only                  | **{1, 2, 3}**           |
| **dict**      | Key-value pairs                               | **{'name': 'Ali'}**     |

#### Examples:

```python
# List
fruits = ["apple", "banana"]
fruits.append("cherry")
print(fruits)  # ['apple', 'banana', 'cherry']

# Set
nums = {1, 2}
nums.add(3)
print(nums)    # {1, 2, 3}

# Dictionary
person = {"name": "Ali", "age": 25}
person["age"] = 26
print(person)  # {'name': 'Ali', 'age': 26}
```

## Compare Table

| Category       | Type          | Mutable? | Ordered? | Allows Duplicates?      |
| -------------- | --------------- | -------- | -------- | ----------------------- |
| Sequence       | **list**        | ✅        | ✅        | ✅                       |
| Mapping        | **dict**        | ✅        | ✅ (3.7+) | ❌ (keys must be unique) |
| Set            | **set**         | ✅        | ❌        | ❌                       |
| Sequence       | **tuple**       | ❌        | ✅        | ✅                       |
| Sequence       | **range**       | ❌        | ✅        | ✅                       |
| Text           | **str**         | ❌        | ✅        | ✅                       |

## Practice Task

Write a program that:

1. Creates a list of numbers: **[1, 2, 3]**
2. Adds **4** to the list
3. Converts it to a tuple
4. Prints both the list and the tuple

```python
nums = [1, 2, 3]
nums.append(4)
t = tuple(nums)

print("List:", nums)
print("Tuple:", t)
```

