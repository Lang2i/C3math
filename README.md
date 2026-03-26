# C3 数学库（单文件 · 无依赖 · 轻量高效）

![C Logo](https://img.shields.io/badge/License-MIT-green?style=flat-square)
[中文](https://github.com/Lang2i/C3math/blob/main/README.md) \| [English](https://github.com/Lang2i/C3math/blob/main/README_E.md)

# C3math

**C3 语言轻量化单文件数学工具库 \| 零依赖、开箱即用、适配新手与日常开发**

---

## 📢 项目简介

C3math 是一款专为 C3 编程语言打造的原生数学工具库，采用单文件设计、无任何第三方依赖，无需复杂配置，导入即可调用各类高频数学、数组、数论函数，完美弥补 C3 内置数学库的日常工具缺口。

本项目初期依托 AI 辅助思路、纯手动编写完成（耗时一天），现阶段为 **v1\.0 稳定可用版**，核心满足 C3 入门练习、课程作业、小型工具开发需求，后续将迭代优化推出 v2\.0 进阶版本，完善算法效率、鲁棒性与接口规范。

## ✨ 核心特性

- **单文件零依赖**：仅一个 `math\.c3` 文件，复制即可集成，无构建、无配置成本

- **纯C3原生实现**：贴合 C3 语法规范，兼容 C3 现有版本，无兼容性问题

- **功能全覆盖**：囊括基础数值运算、数论算法、数组工具、序列计算四大类常用功能

- **新手友好**：接口简洁、调用逻辑直白，无需额外学习成本，入门级开发者可直接使用

- **宽松开源**：采用 MIT 开源协议，可自由使用、修改、分发、商用

## ⚙️ 快速使用

### 1\. 库导入

将项目内 `math\.c3` 文件直接复制到你的 C3 项目根目录，在代码顶部导入模块：

```c3
import math;
```

> **注意**：当前 v1\.0 模块名与 C3 内置 math 库重名，导入后会覆盖内置库；如需同时使用，可手动修改模块名规避冲突，v2\.0 版本将修复该问题。
> 
> 

### 2\. 基础调用示例

```c3
import math;
import io;

fn void main() {
    // 数论运算
    io::printf("12和18的最大公约数：%d\n", math::gcd(12, 18));
    io::printf("7是否为质数：%b\n", math::isPrime(7));
    
    // 数组操作
    int[] arr = {3,1,4,1,5};
    io::printf("数组求和结果：%d\n", math::sum(arr, 5));
    // 数组排序
    math::sort(arr, 5);
}
```

## 📋 完整函数清单

所有函数均为 C3 原生实现，参数简洁，以下为全类别函数说明：

### 1\. 数论运算

|函数名|参数|功能说明|
|---|---|---|
|gcd|int a, int b|计算两个整数的最大公约数|
|lcm|int a, int b|计算两个整数的最小公倍数|
|isPrime|int n|判断整数是否为质数，返回布尔值|
|isEven|int n|判断整数是否为偶数，返回布尔值|

### 2\. 基础数值操作

|函数名|参数|功能说明|
|---|---|---|
|abs|float x|计算浮点数绝对值|
|max|int a, int b|返回两个整数中的最大值|
|min|int a, int b|返回两个整数中的最小值|
|swap|int\* a, int\* b|交换两个整数数值（传地址）|
|clamp|int x, int min, int max|将数值限制在指定区间内|

### 3\. 序列计算

|函数名|参数|功能说明|
|---|---|---|
|fact|int n|计算整数阶乘|
|fib|int n|计算斐波那契数列第n项|

### 4\. 数组工具

|函数名|参数|功能说明|
|---|---|---|
|sum|int\[\] arr, int len|计算数组所有元素求和|
|avg|int\[\] arr, int len|计算数组元素平均值|
|product|int\[\] arr, int len|计算数组所有元素乘积|
|maximum|int\[\] arr, int len|返回数组最大值|
|minimum|int\[\] arr, int len|返回数组最小值|
|sort|int\[\] arr, int len|数组升序排序|
|reverse|int\[\] arr, int len|反转数组元素顺序|

## ⚠️  v1\.0 版本说明

- 当前版本为快速实现版，部分算法采用基础实现，未做极致性能优化

- 未加入完整边界值判断、异常处理，传入非法参数可能导致运行异常

- 模块名与 C3 内置 math 库冲突，v2\.0 版本将彻底修复

- 仅支持 int 类型数组、基础数值运算，暂不支持泛型、浮点数组

## 🚀 后续规划（v2\.0）

- 修复模块名冲突问题，兼容 C3 内置数学库

- 优化算法效率（质数判断、排序、斐波那契等）

- 新增边界判断、异常处理，提升库鲁棒性

- 支持浮点型数值、泛型数组

- 补充更多常用数学、数组函数

- 完善代码注释、规范命名与代码风格

- 新增完整测试用例

## 📄 开源协议

本项目采用 **MIT License**，可自由使用、修改、分发、商用，仅需保留原作者版权信息即可。

## 💬 补充

C3 语言现阶段生态尚不完善，本项目旨在填补基础工具缺口，助力 C3 新手入门与开发。欢迎各位开发者提出优化建议，后续将持续迭代完善，共同搭建 C3 语言生态～

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

- C3 编程语言入门学习、语法实操练习

- 编程课程作业、算法题目快速实现

- 小型控制台程序、轻量化工具开发

- 日常开发复用基础数学、数组功能，避免重复编码

- 教学演示、代码学习参考

---

## 📄 开源协议

本项目采用 **MIT 开源协议**

可自由使用、修改、分发、商用，无需告知作者，使用时保留原协议相关信息即可。


> （注：文档部分内容可能由 AI 生成）
