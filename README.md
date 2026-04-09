# C3math

**C3 语言轻量化单文件数学工具库 | 零依赖、开箱即用、泛型支持**
![C Logo](https://img.shields.io/badge/License-MIT-green?style=flat-square)

[中文文档](https://github.com/Lang2i/C3math/edit/main/README.md) | [English](https://github.com/Lang2i/C3math/blob/main/README_E.md)

---

## 📢 项目简介

C3math 是一款专为 C3 编程语言打造的原生数学工具库，采用单文件设计、无任何第三方依赖，无需复杂配置，导入即可调用各类高频数学、数组、数论函数。

本项目采用 C3 原生泛型语法 `<Tybe>` 实现，支持 int、float 等多种数据类型的通用运算，完美弥补 C3 内置数学库的日常工具缺口。

**当前版本：v2.0 稳定版**

---

## ✨ 核心特性

- **单文件零依赖**：仅一个 `mz.c3` 文件，复制即可集成，无构建、无配置成本
- **泛型编程支持**：基于 C3 泛型 `<Tybe>` 实现，一套代码支持多类型运算
- **安全鲁棒性**：内置空数组判断，避免空数组访问崩溃
- **功能全覆盖**：囊括基础数值运算、数论算法、数组工具、序列计算四大类功能
- **新手友好**：接口简洁、调用逻辑直白，入门级开发者可直接使用
- **宽松开源**：采用 MIT 开源协议，可自由使用、修改、分发、商用

---

## ⚙️ 快速使用

### 1. 库导入

将 `mz.c3` 文件直接复制到你的 C3 项目根目录，在代码顶部导入模块：

```c3
import mz;
```

### 2. 基础调用示例（泛型版）

```c3
import mz;
import io;

fn void main() {
    // 数论运算
    io::printf("12和18的最大公约数：%d\n", mz::gcd{int}(12, 18));
    io::printf("7是否为质数：%b\n", mz::isPrime(7));
    
    // 数组操作
    int[] arr = {3, 1, 4, 1, 5};
    io::printf("数组求和结果：%d\n", mz::sum{int}(arr));
    
    // 数组排序（升序）
    mz::sort{int}(arr);
    
    // 数组反转
    mz::reverse{int}(arr);
}
```

---

## 📋 完整函数清单

### 1. 数论运算

| 函数名 | 参数 | 返回值 | 功能说明 |
|--------|------|--------|----------|
| `gcd{Tybe}` | `Tybe a, Tybe b` | `Tybe` | 计算两个整数的最大公约数（泛型） |
| `lcm{Tybe}` | `Tybe a, Tybe b` | `Tybe` | 计算两个整数的最小公倍数（泛型） |
| `isPrime` | `int num` | `bool` | 判断整数是否为质数 |
| `oe_num{Tybe}` | `Tybe num` | `bool` | 判断偶数（偶数返回 true，泛型） |
| `fcl` | `int num` | `int` | 计算阶乘 n! |
| `fib` | `int n` | `int` | 计算斐波那契数列第 n 项 |

### 2. 基础数值操作

| 函数名 | 参数 | 返回值 | 功能说明 |
|--------|------|--------|----------|
| `max{Tybe}` | `Tybe a, Tybe b` | `Tybe` | 返回两个数中的较大值（泛型） |
| `min{Tybe}` | `Tybe a, Tybe b` | `Tybe` | 返回两个数中的较小值（泛型） |
| `mai{Tybe}` | `Tybe a, Tybe b` | `int` | 比较两个数（大于返回1，小于返回2，相等返回0，泛型） |
| `abs{Tybe}` | `Tybe num` | `Tybe` | 计算数值的绝对值（泛型） |
| `swap{Tybe}` | `Tybe* a, Tybe* b` | `Tybe` | 交换两个变量的值（泛型） |
| `clamp{Tybe}` | `Tybe value, Tybe min, Tybe max` | `Tybe` | 将数值限制在指定范围内（泛型） |

### 3. 数组工具 - 统计运算

| 函数名 | 参数 | 返回值 | 功能说明 |
|--------|------|--------|----------|
| `sum{Tybe}` | `Tybe[] nums` | `Tybe` | 数组所有元素求和（泛型） |
| `product{Tybe}` | `Tybe[] nums` | `Tybe` | 数组所有元素求乘积（泛型） |
| `avg{Tybe}` | `Tybe[] arr` | `Tybe` | 计算数组元素的平均值（泛型） |
| `maximum` | `int[] nums, int* max_val` | `int` | 查找数组最大值，返回其位置（下标+1） |
| `minimum` | `int[] nums, int* min_val` | `int` | 查找数组最小值，返回其位置（下标+1） |
| `maximumf` | `float[] nums, float* max_val` | `int` | 查找浮点数组最大值，返回其位置（下标+1） |
| `minimumf` | `float[] nums, float* min_val` | `int` | 查找浮点数组最小值，返回其位置（下标+1） |
| `maxArr{Tybe}` | `Tybe[] arr` | `Tybe` | 获取数组中的最大值（泛型，空数组安全） |
| `minArr{Tybe}` | `Tybe[] arr` | `Tybe` | 获取数组中的最小值（泛型，空数组安全） |

### 4. 数组工具 - 操作处理

| 函数名 | 参数 | 返回值 | 功能说明 |
|--------|------|--------|----------|
| `sort{Tybe}` | `Tybe[] arr` | `void` | 数组升序排序（快速排序，泛型） |
| `reverse{Tybe}` | `Tybe[] arr` | `void` | 反转数组元素顺序（泛型） |
| `shuffle{Tybe}` | `Tybe[] arr` | `void` | 随机打乱数组元素（泛型） |
| `isEmpty{Tybe}` | `Tybe[] arr` | `bool` | 判断数组是否为空（泛型） |
| `contains{Tybe}` | `Tybe[] arr, Tybe val` | `bool` | 判断数组是否包含指定值（泛型） |
| `indexOf{Tybe}` | `Tybe[] arr, Tybe val` | `int` | 查找指定值在数组中的下标，未找到返回 -1（泛型） |

### 5. 内部辅助函数

| 函数名 | 参数 | 返回值 | 功能说明 |
|--------|------|--------|----------|
| `quickSort{Tybe}` | `Tybe[] a, int left, int right` | `void` | 快速排序核心算法（泛型，内部调用） |

---

## 💻 完整函数示例（已全部修正泛型写法）

### 数论运算类

#### 1. gcd（最大公约数）
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

#### 2. lcm（最小公倍数）
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

#### 3. isPrime（判断质数）
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

#### 4. oe_num（判断偶数）
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

#### 5. fcl（阶乘计算）
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

#### 6. fib（斐波那契数列）
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

### 基础数值操作类

#### 7. max（两数取大）
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

#### 8. min（两数取小）
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

#### 9. mai（数值大小比较）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::mai{int}(6, 3);   // 1 (a > b)
    int b = mz::mai{int}(3, 6);   // 2 (a < b)
    int c = mz::mai{int}(5, 5);   // 0 (a == b)
    io::printfn("mai(6,3) = %d (大于)", a);
    io::printfn("mai(3,6) = %d (小于)", b);
    io::printfn("mai(5,5) = %d (等于)", c);
    return 0;
}
```

#### 10. abs（绝对值）
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

#### 11. swap（数值交换）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = 10, b = 20;
    io::printfn("交换前: a=%d, b=%d", a, b);
    mz::swap{int}(&a, &b);
    io::printfn("交换后: a=%d, b=%d", a, b);  // a=20, b=10
    
    float x = 1.5f, y = 2.5f;
    mz::swap{float}(&x, &y);
    io::printfn("float交换: x=%f, y=%f", x, y);
    return 0;
}
```

#### 12. clamp（数值范围约束）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int a = mz::clamp{int}(30, 10, 100);    // 30 (在范围内)
    int b = mz::clamp{int}(5, 10, 100);     // 10 (低于最小值)
    int c = mz::clamp{int}(150, 10, 100);   // 100 (高于最大值)
    io::printfn("clamp(30,10,100) = %d", a);
    io::printfn("clamp(5,10,100) = %d", b);
    io::printfn("clamp(150,10,100) = %d", c);
    return 0;
}
```

---

### 数组工具 - 统计运算类

#### 13. sum（数组求和）
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

#### 14. product（数组乘积）
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

#### 15. avg（数组平均值）
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

#### 16. maximum（查找数组最大值及位置）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int max_val = 0;
    int[] arr = {3, 7, 2, 9, 4};
    int pos = mz::maximum(arr, &max_val);
    io::printfn("数组: [3,7,2,9,4]");
    io::printfn("最大值: %d, 位置: %d", max_val, pos);  // 9, 4
    return 0;
}
```

#### 17. minimum（查找数组最小值及位置）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int min_val = 0;
    int[] arr = {5, 2, 8, 1, 9};
    int pos = mz::minimum(arr, &min_val);
    io::printfn("数组: [5,2,8,1,9]");
    io::printfn("最小值: %d, 位置: %d", min_val, pos);  // 1, 4
    return 0;
}
```

#### 18. maximumf（浮点数组最大值及位置）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    float max_val = 0;
    float[] arr = {1.5f, 3.2f, 0.8f, 2.9f};
    int pos = mz::maximumf(arr, &max_val);
    io::printfn("float数组最大值: %f, 位置: %d", max_val, pos);  // 3.2, 2
    return 0;
}
```

#### 19. minimumf（浮点数组最小值及位置）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    float min_val = 0;
    float[] arr = {1.5f, 3.2f, 0.8f, 2.9f};
    int pos = mz::minimumf(arr, &min_val);
    io::printfn("float数组最小值: %f, 位置: %d", min_val, pos);  // 0.8, 3
    return 0;
}
```

#### 20. maxArr（泛型数组取最大值）
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

#### 21. minArr（泛型数组取最小值）
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

### 数组工具 - 操作处理类

#### 22. sort（数组升序排序）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {5, 2, 8, 1, 9};
    mz::sort{int}(arr);
    io::print("排序后: ");
    for(int i = 0; i < arr.len; i++) {
        io::printf("%d ", arr[i]);  // 1 2 5 8 9
    }
    io::printn("");
    return 0;
}
```

#### 23. reverse（数组反转）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    mz::reverse{int}(arr);
    io::print("反转后: ");
    for(int i = 0; i < arr.len; i++) {
        io::printf("%d ", arr[i]);  // 5 4 3 2 1
    }
    io::printn("");
    return 0;
}
```

#### 24. shuffle（数组随机打乱）
```c3
import std::io;
import mz;

fn int main(String[] args) {
    int[] arr = {1, 2, 3, 4, 5};
    mz::shuffle{int}(arr);
    io::print("打乱后: ");
    for(int i = 0; i < arr.len; i++) {
        io::printf("%d ", arr[i]);
    }
    io::printn("");
    return 0;
}
```

#### 25. isEmpty（判空数组）
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

#### 26. contains（判断是否包含）
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

#### 27. indexOf（查找元素下标）
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

## 🚀 版本历史

### v2.0（当前版本）
- 模块名改为 `mz`，彻底解决与 C3 内置 `math` 库命名冲突
- 全面支持泛型 `<Tybe>`，int / float 通用
- 新增数组工具：`isEmpty`、`maxArr`、`minArr`、`contains`、`indexOf`、`shuffle`
- 新增空数组安全防护，防止越界崩溃
- 规范泛型变量初始化，代码更符合 C3 标准
- 完善快速排序泛型实现
- 全函数添加中英文注释

### v1.0
- 初始版本，模块名为 `math`，仅支持 int 类型
- 包含基础数论、数值、数组操作功能

---

## 🎯 适用场景

- C3 编程语言入门学习、语法实操练习
- 编程课程作业、算法题目快速实现
- 小型控制台程序、轻量化工具开发
- 日常开发复用基础数学、数组功能，避免重复编码
- 教学演示、代码学习参考

---

## 📄 开源协议

本项目采用 **MIT License**

可自由使用、修改、分发、商用，无需告知作者，使用时保留原协议相关信息即可。

---

> 本项目为 C3 语言生态社区贡献项目，欢迎提交 Issue 与 PR 共同完善。

---

