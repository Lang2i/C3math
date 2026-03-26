# C3 数学库（单文件 · 无依赖 · 轻量高效）

[中文]()
[英文]()

> 纯C3语言编写，单文件集成、零外部依赖、开箱即用的轻量化数学工具库，涵盖基础数值运算、数组处理、数论算法等常用功能，适配学习实操、课程作业、小型项目快速开发。
> 
> 

---

## ✨ 亮点特性

- **单文件集成**：仅一个math\.c3文件，无需复杂配置，直接导入使用

- **零依赖无侵入**：纯原生C3实现，不依赖任何第三方库，不占用额外项目资源

- **功能全覆盖**：包含基础数值运算、数组工具、数论算法、序列计算、数值约束等常用功能

- **代码易读易改**：函数逻辑简洁，附带完整注释，新手也能轻松理解、二次修改

- **开箱即用**：导入模块即可调用所有函数，降低开发成本

---

## 📋 函数功能一览表

|函数名|参数类型|功能说明|
|---|---|---|
|gcd|int,int|求两个数的最大公约数|
|lcm|int,int|求两个数的最小公倍数|
|mai|int,int|比较两个数大小（a\&gt;b返回1，a\&lt;b返回2，相等返回0）|
|maximum|int\[\],int\*|查找数组最大值并返回元素位置（下标\+1）|
|minimum|int\[\],int\*|查找数组最小值并返回元素位置（下标\+1）|
|oe\_num|int|判断一个数是否为偶数|
|abs|float|求浮点数绝对值|
|swap|int\*,int\*|交换两个整数的值|
|sum|int\[\]|数组所有元素求和|
|product|int\[\]|数组所有元素求乘积|
|isPrime|int|判断一个数是否为质数|
|sort|int\[\]|数组快速排序（从小到大）|
|reverse|int\[\]|数组反转|
|avg|int\[\]|计算数组平均值|
|fcl|int|计算阶乘 n\!|
|fib|int|计算斐波那契数列第 n 项|
|clamp|int,int,int|限制数值在指定范围内|

---

## 🚀 快速使用

### 1\. 项目获取

通过Git克隆项目到本地，获取单文件数学库：

```bash
git clone https://github.com/Lang2i/C3math.git
```

### 2\. 文件导入

将项目内的`math\.c3` 文件，直接复制到你的C3项目目录下

### 3\. 模块引入

在需要使用的C3文件顶部，导入math模块：

```c
import std::io;
import math;
```

---

## 💻 常用函数示例

### 1\. gcd（最大公约数）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = math::gcd(6,3);
    // 运行结果：a = 3
    return 0;
}
```

### 2\. lcm（最小公倍数）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = math::lcm(6,3);
    // 运行结果：a = 6
    return 0;
}
```

### 3\. mai（数值大小比较）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = math::mai(6,3);
    int b = math::mai(3,6);
    // 运行结果：a = 1，b = 2
    return 0;
}
```

### 4\. maximum（查找数组最大值）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int max = 0;
    int[] arr = [0,2,4,6,8];

    int m = math::maximum(arr,&max);
    // 运行结果：m = 5，max = 8
    io::printf("%d %d",m,max);
    return 0;
}
```

### 5\. minimum（查找数组最小值）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int min = 0;
    int[] arr = [0,2,4,6,8];

    int m = math::minimum(arr,&min);
    // 运行结果：m = 1，min = 0
    io::printf("%d %d",m,min);
    return 0;
}
```

### 6\. oe\_num（判断偶数）

```c
import std::io;
import math;

fn int main(String[] args)
{
    bool c = math::oe_num(2);
    bool b = math::oe_num(0);
    // 运行结果：c = true，b = false
    return 0;
}
```

### 7\. abs（绝对值）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int m = -10;
    int b = (int)math::abs(m);
    // 运行结果：b = 10
    io::print(b);
    return 0;
}
```

### 8\. swap（数值交换）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int a = 10;
    int b = 20;
    math::swap(&a,&b);
    // 运行结果：a = 20，b = 10
    io::printfn("a = %d  b = %d",a,b);
    return 0;
}
```

### 9\. sum（数组求和）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] arr = [2,4,6,8];
    int num = math::sum(arr);
    // 运行结果：num = 20
    io::printn(num);
    return 0;
}
```

### 10\. product（数组乘积）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] arr = [2,4,6,8];
    int num = math::product(arr);
    // 运行结果：num = 384
    io::printn(num);
    return 0;
}
```

### 11\. isPrime（判断质数）

```c
import std::io;
import math;

fn int main(String[] args)
{
    // 运行结果：true
    io::printn(math::isPrime(3));
    // 运行结果：false
    io::printn(math::isPrime(4));
    return 0;
}
```

### 12\. sort（数组排序）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] a = [5,3,56,21,45];
    math::sort(a);
    // 运行结果：3 5 21 45 56
    for(int i = 0;i<a.len;i++)
    {
        io::printn(a[i]);
    }
    return 0;
}
```

### 13\. reverse（数组反转）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] a = [1,2,3,4,5];
    math::reverse(a);
    // 运行结果：5 4 3 2 1
    for(int i = 0;i<a.len;i++)
    {
        io::printn(a[i]);
    }
    return 0;
}
```

### 14\. avg（数组平均值）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int[] a = [3,4,4,4,4];
    float num = math::avg(a);
    // 运行结果：num = 3.8
    io::print(num);
    return 0;
}
```

### 15\. fcl（阶乘计算）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int num = math::fcl(5);
    // 运行结果：num = 120
    io::print(num);
    return 0;
}
```

### 16\. fib（斐波那契数列）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int num = math::fib(3);
    int num1 = math::fib(2);
    // 运行结果：num = 2，num1 = 1
    io::printn(num);
    io::printn(num1);
    return 0;
}
```

### 17\. clamp（数值范围约束）

```c
import std::io;
import math;

fn int main(String[] args)
{
    int num = math::clamp(30,10,100);
    int num1 = math::clamp(0,10,100);
    // 运行结果：num = 30，num1 = 10
    return 0;
}
```

---

## 🎯 适用场景

- C3编程语言入门学习、语法实操练习

- 编程课程作业、算法题目快速实现

- 小型控制台程序、工具开发

- 日常开发中基础数学、数组功能复用，避免重复造轮子

- 教学演示、代码学习参考

---

## 📄 开源协议

本项目采用 **MIT 开源协议**

可自由使用、修改、分发、商用，无需告知作者，使用时保留原协议信息即可。

> （注：文档部分内容可能由 AI 生成）
