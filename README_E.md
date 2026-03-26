
# C3 Math Library \(Single\-File · No Dependencies · Lightweight \&amp; Efficient\)

[中文](https://github.com/Lang2i/C3math/blob/main/README.md) \| [English](https://github.com/Lang2i/C3math/blob/main/README_E.md)

> A lightweight math utility library written in pure C3, with single\-file integration, zero external dependencies, and out\-of\-the\-box usability\.
> 
> It includes common functions for basic numerical operations, array processing, number theory algorithms, and is suitable for learning, coursework, and rapid development of small projects\.
> 
> 

---

## ✨ Features

- **📄 Single\-File Integration**: Only one `math\.c3` file, no complex configuration — copy and import directly

- **🧩 Zero Dependencies**: Implemented in pure native C3, no third\-party libraries, no extra resource usage

- **🧮 Full Feature Coverage**: Includes basic arithmetic, array utilities, number theory, sequence calculation, value clamping, and other high\-frequency functions

- **🔍 Clean \&amp; Modifiable Code**: Simple logic with full comments, easy for beginners to understand and modify

- **⚡ Out\-of\-the\-Box**: All functions available upon import, avoiding redundant work and greatly reducing development overhead

---

## 📋 Function List

|Function|Parameters|Description|
|---|---|---|
|gcd|int, int|Compute the greatest common divisor of two integers|
|lcm|int, int|Compute the least common multiple of two integers|
|mai|int, int|Compare two integers \(returns 1 if a \&gt; b, 2 if a \&lt; b, 0 if equal\)|
|maximum|int\[\], int\*|Find the maximum value in an array and return its position \(index \+ 1\)|
|minimum|int\[\], int\*|Find the minimum value in an array and return its position \(index \+ 1\)|
|oe_num|int|Check whether a number is even|
|abs|float|Get the absolute value of a float|
|swap|int*, int*|Swap the values of two integers|
|sum|int\[\]|Calculate the sum of all elements in an array|
|product|int\[\]|Calculate the product of all elements in an array|
|isPrime|int|Check whether a number is prime|
|sort|int\[\]|Quick sort an array in ascending order|
|reverse|int\[\]|Reverse an array|
|avg|int\[\]|Calculate the average value of an array|
|fcl|int|Compute the factorial of n \(n\!\)|
|fib|int|Get the n‑th term of the Fibonacci sequence|
|clamp|int,int,int|Restrict a value within a specified range|

---

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

> （注：文档部分内容可能由 AI 生成）
