
# C3math

**A lightweight, single-file math utility library for the C3 programming language | Zero dependencies, ready to use, generic support**

[中文文档](sslocal://flow/file_open?url=https%3A%2F%2Fgithub.com%2FLang2i%2FC3math%2Fedit%2Fmain%2FREADME.md&flow_extra=eyJsaW5rX3R5cGUiOiJjb2RlX2ludGVycHJldGVyIn0=) | [English](sslocal://flow/file_open?url=https%3A%2F%2Fgithub.com%2FLang2i%2FC3math%2Fblob%2Fmain%2FREADME_E.md&flow_extra=eyJsaW5rX3R5cGUiOiJjb2RlX2ludGVycHJldGVyIn0=)

---

## 📢 Project Overview

C3math is a native math utility library designed specifically for the C3 programming language. It features a single-file design with no third-party dependencies, requiring no complex setup. Simply import it to access a wide range of commonly used math, array, and number-theoretic functions.

This library is implemented using C3's native generic syntax `<Tybe>`, supporting common operations across multiple data types such as `int` and `float`, filling gaps in everyday tools missing from C3's built-in math library.

**Current Version: v2.0 Stable**

---

## ✨ Key Features

- **Single-file & Zero Dependencies**: Only one `mz.c3` file; copy and integrate with zero build or configuration overhead
- **Generic Programming Support**: Built on C3 generics `<Tybe>`, one codebase supports multiple data types
- **Safety & Robustness**: Built-in empty array checks to prevent crashes from invalid array access
- **Comprehensive Functionality**: Covers basic numeric operations, number theory, array utilities, and sequence calculations
- **Beginner-friendly**: Clean interfaces and straightforward logic, ready for entry-level developers
- **Permissive Open Source**: Licensed under MIT, free to use, modify, distribute, and use commercially

---

## ⚙️ Quick Start

### 1. Library Import

Copy `mz.c3` into your C3 project root directory and import the module at the top of your code:

```c3
import mz;
```

### 2. Basic Usage Example (Generic Version)

```c3
import mz;
import io;

fn void main() {
    // Number theory operations
    io::printf("GCD of 12 and 18: %d\n", mz::gcd{int}(12, 18));
    io::printf("Is 7 a prime number: %b\n", mz::isPrime(7));
    
    // Array operations
    int[] arr = {3, 1, 4, 1, 5};
    io::printf("Sum of array: %d\n", mz::sum{int}(arr));
    
    // Sort array (ascending)
    mz::sort{int}(arr);
    
    // Reverse array
    mz::reverse{int}(arr);
}
```

---

## 📋 Full Function List

### 1. Number Theory

| Function | Parameters | Return | Description |
|----------|------------|--------|-------------|
| `gcd{Tybe}` | `Tybe a, Tybe b` | `Tybe` | Compute the greatest common divisor of two integers (generic) |
| `lcm{Tybe}` | `Tybe a, Tybe b` | `Tybe` | Compute the least common multiple of two integers (generic) |
| `isPrime` | `int num` | `bool` | Check if a number is prime |
| `oe_num{Tybe}` | `Tybe num` | `bool` | Check if a number is even (generic, returns true if even) |
| `fcl` | `int num` | `int` | Compute factorial of n (n!) |
| `fib` | `int n` | `int` | Get the nth term of the Fibonacci sequence |

### 2. Basic Numeric Operations

| Function | Parameters | Return | Description |
|----------|------------|--------|-------------|
| `max{Tybe}` | `Tybe a, Tybe b` | `Tybe` | Return the greater of two values (generic) |
| `min{Tybe}` | `Tybe a, Tybe b` | `Tybe` | Return the smaller of two values (generic) |
| `mai{Tybe}` | `Tybe a, Tybe b` | `int` | Compare two values: 1 = greater, 2 = less, 0 = equal (generic) |
| `abs{Tybe}` | `Tybe num` | `Tybe` | Compute absolute value (generic) |
| `swap{Tybe}` | `Tybe* a, Tybe* b` | `Tybe` | Swap values of two variables (generic) |
| `clamp{Tybe}` | `Tybe value, Tybe min, Tybe max` | `Tybe` | Restrict a value within a given range (generic) |

### 3. Array Utilities - Statistics

| Function | Parameters | Return | Description |
|----------|------------|--------|-------------|
| `sum{Tybe}` | `Tybe[] nums` | `Tybe` | Calculate sum of array elements (generic) |
| `product{Tybe}` | `Tybe[] nums` | `Tybe` | Calculate product of array elements (generic) |
| `avg{Tybe}` | `Tybe[] arr` | `Tybe` | Calculate average of array elements (generic) |
| `maximum` | `int[] nums, int* max_val` | `int` | Find maximum value in int array, return position (index + 1) |
| `minimum` | `int[] nums, int* min_val` | `int` | Find minimum value in int array, return position (index + 1) |
| `maximumf` | `float[] nums, float* max_val` | `int` | Find maximum value in float array, return position (index + 1) |
| `minimumf` | `float[] nums, float* min_val` | `int` | Find minimum value in float array, return position (index + 1) |
| `maxArr{Tybe}` | `Tybe[] arr` | `Tybe` | Get maximum value in array (generic, safe for empty arrays) |
| `minArr{Tybe}` | `Tybe[] arr` | `Tybe` | Get minimum value in array (generic, safe for empty arrays) |

### 4. Array Utilities - Manipulation

| Function | Parameters | Return | Description |
|----------|------------|--------|-------------|
| `sort{Tybe}` | `Tybe[] arr` | `void` | Sort array in ascending order (quicksort, generic) |
| `reverse{Tybe}` | `Tybe[] arr` | `void` | Reverse order of array elements (generic) |
| `shuffle{Tybe}` | `Tybe[] arr` | `void` | Randomly shuffle array elements (generic) |
| `isEmpty{Tybe}` | `Tybe[] arr` | `bool` | Check if array is empty (generic) |
| `contains{Tybe}` | `Tybe[] arr, Tybe val` | `bool` | Check if array contains a given value (generic) |
| `indexOf{Tybe}` | `Tybe[] arr, Tybe val` | `int` | Find index of value in array; returns -1 if not found (generic) |

### 5. Internal Helper Functions

| Function | Parameters | Return | Description |
|----------|------------|--------|-------------|
| `quickSort{Tybe}` | `Tybe[] a, int left, int right` | `void` | Core quicksort algorithm (generic, for internal use) |

---

## 💻 Complete Usage Examples

### Number Theory

#### 1. gcd (Greatest Common Divisor)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::gcd{int}(12, 18);   // 6
    int b = mz::gcd{int}(35, 14);   // 7
    io::printfn("gcd(12,18) = %d", a);
    io::printfn("gcd(35,14) = %d", b);
    return 0;
}
```

#### 2. lcm (Least Common Multiple)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::lcm{int}(4, 6);     // 12
    int b = mz::lcm{int}(5, 7);     // 35
    io::printfn("lcm(4,6) = %d", a);
    io::printfn("lcm(5,7) = %d", b);
    return 0;
}
```

#### 3. isPrime (Prime Check)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    io::printfn("2 is prime: %b", mz::isPrime(2));    // true
    io::printfn("17 is prime: %b", mz::isPrime(17));  // true
    io::printfn("4 is prime: %b", mz::isPrime(4));     // false
    io::printfn("1 is prime: %b", mz::isPrime(1));     // false
    return 0;
}
```

#### 4. oe_num (Even Check)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    io::printfn("2 is even: %b", mz::oe_num{int}(2));    // true
    io::printfn("3 is even: %b", mz::oe_num{int}(3));   // false
    io::printfn("0 is even: %b", mz::oe_num{int}(0));    // true
    io::printfn("-4 is even: %b", mz::oe_num{int}(-4));  // true
    return 0;
}
```

#### 5. fcl (Factorial)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    io::printfn("5! = %d", mz::fcl(5));   // 120
    io::printfn("3! = %d", mz::fcl(3));   // 6
    io::printfn("0! = %d", mz::fcl(0));   // 1
    return 0;
}
```

#### 6. fib (Fibonacci Sequence)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    io::printfn("fib(1) = %d", mz::fib(1));   // 1
    io::printfn("fib(2) = %d", mz::fib(2));   // 1
    io::printfn("fib(5) = %d", mz::fib(5));   // 5
    io::printfn("fib(10) = %d", mz::fib(10)); // 55
    return 0;
}
```

---

### Basic Numeric Operations

#### 7. max (Maximum of Two Values)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::max{int}(10, 20);           // 20
    float b = mz::max{float}(3.5f, 2.1f);  // 3.5
    io::printfn("max(10,20) = %d", a);
    return 0;
}
```

#### 8. min (Minimum of Two Values)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::min{int}(10, 20);           // 10
    float b = mz::min{float}(3.5f, 2.1f);  // 2.1
    io::printfn("min(10,20) = %d", a);
    return 0;
}
```

#### 9. mai (Value Comparison)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::mai{int}(6, 3);   // 1 (a > b)
    int b = mz::mai{int}(3, 6);   // 2 (a < b)
    int c = mz::mai{int}(5, 5);   // 0 (a == b)
    io::printfn("mai(6,3) = %d (greater)", a);
    io::printfn("mai(3,6) = %d (less)", b);
    io::printfn("mai(5,5) = %d (equal)", c);
    return 0;
}
```

#### 10. abs (Absolute Value)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::abs{int}(-10);             // 10
    int b = mz::abs{int}(10);              // 10
    float c = mz::abs{float}(-3.14f);      // 3.14
    io::printfn("abs(-10) = %d", a);
    io::printfn("abs(10) = %d", b);
    return 0;
}
```

#### 11. swap (Value Swap)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = 10, b = 20;
    io::printfn("Before swap: a=%d, b=%d", a, b);
    mz::swap{int}(&a, &b);
    io::printfn("After swap: a=%d, b=%d", a, b);  // a=20, b=10
    
    float x = 1.5f, y = 2.5f;
    mz::swap{float}(&x, &y);
    io::printfn("float swap: x=%f, y=%f", x, y);
    return 0;
}
```

#### 12. clamp (Range Restriction)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::clamp{int}(30, 10, 100);    // 30 (within range)
    int b = mz::clamp{int}(5, 10, 100);     // 10 (below min)
    int c = mz::clamp{int}(150, 10, 100);   // 100 (above max)
    io::printfn("clamp(30,10,100) = %d", a);
    io::printfn("clamp(5,10,100) = %d", b);
    io::printfn("clamp(150,10,100) = %d", c);
    return 0;
}
```

---

### Array Utilities - Statistics

#### 13. sum (Array Sum)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    int total = mz::sum{int}(arr);  // 15
    io::printfn("sum([1,2,3,4,5]) = %d", total);
    return 0;
}
```

#### 14. product (Array Product)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {2, 3, 4};
    int result = mz::product{int}(arr);  // 24
    io::printfn("product([2,3,4]) = %d", result);
    return 0;
}
```

#### 15. avg (Array Average)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {3, 4, 5, 6};
    int avg = mz::avg{int}(arr);  // 4
    io::printfn("avg([3,4,5,6]) = %d", avg);
    return 0;
}
```

#### 16. maximum (Max Value & Position)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int max_val = 0;
    int[] arr = {3, 7, 2, 9, 4};
    int pos = mz::maximum(arr, &max_val);
    io::printfn("Array: [3,7,2,9,4]");
    io::printfn("Max value: %d, Position: %d", max_val, pos);  // 9, 4
    return 0;
}
```

#### 17. minimum (Min Value & Position)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int min_val = 0;
    int[] arr = {5, 2, 8, 1, 9};
    int pos = mz::minimum(arr, &min_val);
    io::printfn("Array: [5,2,8,1,9]");
    io::printfn("Min value: %d, Position: %d", min_val, pos);  // 1, 4
    return 0;
}
```

#### 18. maximumf (Float Array Max & Position)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    float max_val = 0;
    float[] arr = {1.5f, 3.2f, 0.8f, 2.9f};
    int pos = mz::maximumf(arr, &max_val);
    io::printfn("Float array max: %f, Position: %d", max_val, pos);  // 3.2, 2
    return 0;
}
```

#### 19. minimumf (Float Array Min & Position)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    float min_val = 0;
    float[] arr = {1.5f, 3.2f, 0.8f, 2.9f};
    int pos = mz::minimumf(arr, &min_val);
    io::printfn("Float array min: %f, Position: %d", min_val, pos);  // 0.8, 3
    return 0;
}
```

#### 20. maxArr (Generic Array Max)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {3, 1, 4, 1, 5};
    int m = mz::maxArr{int}(arr);  // 5
    io::printfn("maxArr([3,1,4,1,5]) = %d", m);
    return 0;
}
```

#### 21. minArr (Generic Array Min)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {3, 1, 4, 1, 5};
    int m = mz::minArr{int}(arr);  // 1
    io::printfn("minArr([3,1,4,1,5]) = %d", m);
    return 0;
}
```

---

### Array Utilities - Manipulation

#### 22. sort (Ascending Sort)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {5, 2, 8, 1, 9};
    mz::sort{int}(arr);
    io::print("Sorted: ");
    for(int i = 0; i < arr.len; i++) {
        io::printf("%d ", arr[i]);  // 1 2 5 8 9
    }
    io::printn("");
    return 0;
}
```

#### 23. reverse (Array Reverse)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    mz::reverse{int}(arr);
    io::print("Reversed: ");
    for(int i = 0; i < arr.len; i++) {
        io::printf("%d ", arr[i]);  // 5 4 3 2 1
    }
    io::printn("");
    return 0;
}
```

#### 24. shuffle (Random Shuffle)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    mz::shuffle{int}(arr);
    io::print("Shuffled: ");
    for(int i = 0; i < arr.len; i++) {
        io::printf("%d ", arr[i]);
    }
    io::printn("");
    return 0;
}
```

#### 25. isEmpty (Empty Array Check)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] empty = {};
    int[] data = {1, 2, 3};
    io::printfn("{} is empty: %b", mz::isEmpty{int}(empty));     // true
    io::printfn("{1,2,3} is empty: %b", mz::isEmpty{int}(data)); // false
    return 0;
}
```

#### 26. contains (Value Existence Check)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    io::printfn("contains 3: %b", mz::contains{int}(arr, 3));   // true
    io::printfn("contains 7: %b", mz::contains{int}(arr, 7));   // false
    return 0;
}
```

#### 27. indexOf (Value Index Lookup)
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {10, 20, 30, 40};
    io::printfn("indexOf 30: %d", mz::indexOf{int}(arr, 30));   // 2
    io::printfn("indexOf 50: %d", mz::indexOf{int}(arr, 50));   // -1
    return 0;
}
```

---

## 🚀 Version History

### v2.0 (Current)
- Renamed module to `mz` to resolve naming conflict with C3's built-in `math` library
- Full generic support `<Tybe>` for `int` / `float` types
- Added array utilities: `isEmpty`, `maxArr`, `minArr`, `contains`, `indexOf`, `shuffle`
- Added empty array safety checks to prevent out-of-bounds crashes
- Standardized generic variable initialization for C3 compliance
- Improved generic quicksort implementation
- Added English and Chinese comments to all functions

### v1.0
- Initial version with module name `math`, `int`-only support
- Basic number theory, numeric, and array operations

---

## 🎯 Use Cases

- Learning and practicing C3 programming language fundamentals
- Homework assignments and algorithm implementation
- Small console applications and lightweight tool development
- Reusable math and array utilities to avoid redundant coding
- Teaching, demonstrations, and code learning references

---

## 📄 License

This project is licensed under the **MIT License**.

You are free to use, modify, distribute, and use it commercially without notifying the author, as long as the original license information is retained.

---

> This is a community-driven project for the C3 language ecosystem. Issues and pull requests are welcome.
