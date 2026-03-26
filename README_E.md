
# C3 Math Library \(Single\-File · No Dependencies · Lightweight \&amp; Efficient\)

![C Logo](https://img.shields.io/badge/License-MIT-green?style=flat-square)
[中文](https://github.com/Lang2i/C3math/blob/main/README.md) \| [English](https://github.com/Lang2i/C3math/blob/main/README_E.md)

atively implemented in C3 with concise parameters\. The full categorized function details are as follows:

### 1\. Number\-Theoretic Operations

|Function|Parameters|Description|
|---|---|---|
|gcd|int a, int b|Calculates the greatest common divisor of two integers|
|lcm|int a, int b|Calculates the least common multiple of two integers|
|isPrime|int n|Checks if an integer is a prime number, returns a boolean value|
|isEven|int n|Checks if an integer is even, returns a boolean value|

### 2\. Basic Numerical Operations

|Function|Parameters|Description|
|---|---|---|
|abs|float x|Calculates the absolute value of a float|
|max|int a, int b|Returns the maximum of two integers|
|min|int a, int b|Returns the minimum of two integers|
|swap|int\* a, int\* b|Swaps the values of two integers \(pass by address\)|
|clamp|int x, int min, int max|Restricts a value within a specified range|

### 3\. Sequence Calculation

|Function|Parameters|Description|
|---|---|---|
|fact|int n|Calculates the factorial of an integer|
|fib|int n|Calculates the nth term of the Fibonacci sequence|

### 4\. Array Utilities

|Function|Parameters|Description|
|---|---|---|
|sum|int\[\] arr, int len|Calculates the sum of all elements in an array|
|avg|int\[\] arr, int len|Calculates the average of array elements|
|product|int\[\] arr, int len|Calculates the product of all elements in an array|
|maximum|int\[\] arr, int len|Returns the maximum value in an array|
|minimum|int\[\] arr, int len|Returns the minimum value in an array|
|sort|int\[\] arr, int len|Sorts an array in ascending order|
|reverse|int\[\] arr, int len|Reverses the order of array elements|

## ⚠️ v1\.0 Version Notes

- The current version is a rapid implementation; some algorithms use basic solutions without extreme performance optimization\.

- No complete boundary value checking or exception handling; invalid parameter inputs may cause runtime errors\.

- Module name conflicts with C3\&\#39;s built\-in math library, to be fully resolved in v2\.0\.

- Only supports int\-type arrays and basic numerical operations; generic and floating\-point array support is not available yet\.

## 🚀 Future Plans \(v2\.0\)

- Fix module name conflicts and achieve compatibility with C3\&\#39;s built\-in math library\.

- Optimize algorithm efficiency \(prime checking, sorting, Fibonacci calculation, etc\.\)\.

- Add boundary checking and exception handling to improve library robustness\.

- Support floating\-point values and generic arrays\.

- Add more commonly\-used mathematical and array functions\.

- Improve code comments, standardize naming and coding style\.

- Add complete test cases\.

## 📄 Open\-Source License

This project is licensed under the **MIT License**\. It is free to use, modify, distribute, and commercially utilize, provided that the original author\&\#39;s copyright information is retained\.

## 💬 Additional Notes

The ecosystem of the C3 language is still immature at this stage\. This project aims to fill the basic utility gap and assist entry\-level developers in learning and developing with C3\. Suggestions from developers are warmly welcomed, and the project will be continuously improved to build the C3 language ecosystem together\.


## 🚀 Quick Start

### 1\. Get the Project

Clone the repository locally to get the complete single\-file math library:

```bash
git clone https://github.com/Lang2i/C3math.git
```

### 2\. Import the File

Simply copy `math\.c3` from the project into your C3 project root directory\.

### 3\. Import the Module

At the top of your C3 file where functions will be used:

```c
import std::io;
import math;
```

---

## 💻 Usage Examples

### 1\. gcd \(Greatest Common Divisor\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = math::gcd(6,3);
    // Result: a = 3
    return 0;
}
```

### 2\. lcm \(Least Common Multiple\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = math::lcm(6,3);
    // Result: a = 6
    return 0;
}
```

### 3\. mai \(Value Comparison\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = math::mai(6,3);
    int b = math::mai(3,6);
    // Result: a = 1, b = 2
    return 0;
}
```

### 4\. maximum \(Find Array Maximum\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int max = 0;
    int[] arr = [0,2,4,6,8];

    int m = math::maximum(arr,&max);
    // Result: m = 5, max = 8
    io::printf("%d %d",m,max);
    return 0;
}
```

### 5\. minimum \(Find Array Minimum\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int min = 0;
    int[] arr = [0,2,4,6,8];

    int m = math::minimum(arr,&min);
    // Result: m = 1, min = 0
    io::printf("%d %d",m,min);
    return 0;
}
```

### 6\. oe\_num \(Even Check\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    bool c = math::oe_num(2);
    bool b = math::oe_num(0);
    // Result: c = true, b = false
    return 0;
}
```

### 7\. abs \(Absolute Value\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int m = -10;
    int b = (int)math::abs(m);
    // Result: b = 10
    io::print(b);
    return 0;
}
```

### 8\. swap \(Value Swap\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = 10;
    int b = 20;
    math::swap(&a,&b);
    // Result: a = 20, b = 10
    io::printfn("a = %d  b = %d",a,b);
    return 0;
}
```

### 9\. sum \(Array Sum\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] arr = [2,4,6,8];
    int num = math::sum(arr);
    // Result: num = 20
    io::printn(num);
    return 0;
}
```

### 10\. product \(Array Product\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] arr = [2,4,6,8];
    int num = math::product(arr);
    // Result: num = 384
    io::printn(num);
    return 0;
}
```

### 11\. isPrime \(Prime Check\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    // Result: true
    io::printn(math::isPrime(3));
    // Result: false
    io::printn(math::isPrime(4));
    return 0;
}
```

### 12\. sort \(Array Sort\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] a = [5,3,56,21,45];
    math::sort(a);
    // Result: 3 5 21 45 56
    for(int i = 0;i<a.len;i++)
    {
        io::printn(a[i]);
    }
    return 0;
}
```

### 13\. reverse \(Array Reverse\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] a = [1,2,3,4,5];
    math::reverse(a);
    // Result: 5 4 3 2 1
    for(int i = 0;i<a.len;i++)
    {
        io::printn(a[i]);
    }
    return 0;
}
```

### 14\. avg \(Array Average\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] a = [3,4,4,4,4];
    float num = math::avg(a);
    // Result: num = 3.8
    io::print(num);
    return 0;
}
```

### 15\. fcl \(Factorial\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int num = math::fcl(5);
    // Result: num = 120
    io::print(num);
    return 0;
}
```

### 16\. fib \(Fibonacci Sequence\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int num = math::fib(3);
    int num1 = math::fib(2);
    // Result: num = 2, num1 = 1
    io::printn(num);
    io::printn(num1);
    return 0;
}
```

### 17\. clamp \(Value Range Restriction\)

```c
import std::io;
import math;

fn int main(String[] args)
{
    int num = math::clamp(30,10,100);
    int num1 = math::clamp(0,10,100);
    // Result: num = 30, num1 = 10
    return 0;
}
```

---

## 🎯 Suitable Use Cases

- Learning and practicing the C3 programming language

- Coursework assignments and rapid algorithm implementation

- Small console applications and lightweight tool development

- Reusing basic math and array logic in daily development to avoid redundant coding

- Teaching demonstrations and code learning references

---

## 📄 License

This project is licensed under the **MIT License**\.

You may freely use, modify, distribute, and use it commercially without notifying the author, as long as the original license information is retained\.

> 📌 Note: Some documentation content may be generated by AI\.
> 
> 

> Note: Some documentation content may be generated by AI\.
> 
> 

