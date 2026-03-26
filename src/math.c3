module math;

/* Numerical Operations / 数值运算 */

/**
 * Calculate the greatest common divisor of two numbers
 * 计算两个数的最大公约数
 */
fn int gcd(int a, int b)
{
	int t;          

	while(a % b)
	{
		t = a % b;   
		a = b;       
		b = t;       
	}

	return b;
}

/**
 * Calculate the least common multiple of two numbers
 * 计算两个数的最小公倍数
 */
fn int lcm(int a,int b)
{
	return a*b/gcd(a,b);
}

/**
 * Compare two numbers (1 if a>b, 2 if a<b, 0 if equal)
 * 比较两个数字大小（a大于b返回1，小于返回2，相等返回0）
 */
fn int mai(int a, int b) {	
    if (a > b) return 1;
    if (a < b) return 2;
    return 0;
}

/**
 * Find the maximum value in the array and return its position (index+1)
 * 查找数组中的最大值，并返回它的位置（下标+1）
 */
fn int maximum(int[] nums, int* max_val) {
    *max_val = nums[0];

    for (int i = 1; i < nums.len; i++) {
        if (nums[i] > *max_val) *max_val = nums[i];
    }
	for(int i = 0;i < nums.len;i++)
	{
		if(nums[i] == *max_val)return i+1;
	}
	return 0;
}

/**
 * Find the minimum value in the array and return its position (index+1)
 * 查找数组中的最小值，并返回它的位置（下标+1）
 */
fn int minimum(int[] nums, int* min_val) {
    *min_val = nums[0];

    for (int i = 1; i < nums.len; i++) {
        if (nums[i] < *min_val) *min_val = nums[i];
    }
	for(int i = 0;i < nums.len;i++)
	{
		if(nums[i] == *min_val)return i+1;
	}
	return 0;
}

/**
 * Judge even number (return true for even numbers)
 * 判断偶数（偶数返回true）
 */
fn bool oe_num(int num)
{
	if(num % 2 == 0)
	{
		return true;
	}
	
	return false;
}

/**
 * Calculate the absolute value of a float number
 * 计算浮点数的绝对值
 */
fn float abs(float num)
{
	if(num < 0)
	{
		return -num;
	}
	return num;
}

/**
 * Swap the values of two integers
 * 交换两个整数的值
 */
fn int swap(int* a,int* b)
{	
	int c = *a;
	*a = *b;
	*b = c;
	return 0;
}

/**
 * Sum all elements of the array
 * 数组所有元素求和
 */
fn int sum(int[] nums)
{
    int total = 0;  

    for (int i = 0; i < nums.len; i++)
    {
        total = total + nums[i];
    }

    return total;  
}

/**
 * Multiply all elements of the array
 * 数组所有元素求乘积
 */
fn int product(int[] nums)
{
    int total = 1;  

    for (int i = 0; i < nums.len; i++)
    {
        total = total * nums[i];
    }

    return total;  
}

/**
 * Judge prime number
 * 判断质数
 */
fn bool isPrime(int num)
{
	if(num < 2)return false;
	for(int i = 2;i<num;i++)
	{
		if(num % i == 0)return false;
	}
	return true;
}

/**
 * Quick sort core algorithm
 * 快速排序核心算法
 */
fn void quickSort(int[] a,int left,int right)
{
	int i = 0;
	int j = 0;
	int t = 0;
	int temp = 0;

	if(left>right)return;

	temp = a[left];
	i = left;
	j = right;
	while(i != j)
	{
		while(a[j]>=temp && i<j)
		{
			j--;
		}
		while(a[i]<=temp && i<j)
		{
			i++;
		}
		if(i<j)
		{
			t = a[i];
			a[i] = a[j];
			a[j] = t;
		}
	}

	a[left] = a[i];
	a[i] = temp;

	quickSort(a,left,i-1);
	quickSort(a,i+1,right);	
}

/**
 * Array sort (ascending order)
 * 数组排序（从小到大）
 */
fn void sort(int[] arr)
{
    if (arr.len <= 1) return;
    quickSort(arr, 0, arr.len - 1);
}

/**
 * Reverse the array
 * 数组反转
 */
fn void reverse(int[] arr)
{
    int left = 0;
    int right = arr.len - 1;

    while (left < right)
    {
        int temp = arr[left];
        arr[left] = arr[right];
        arr[right] = temp;

        left++;
        right--;
    }
}

/**
 * Calculate the average of array elements
 * 计算数组元素的平均值
 */
fn float avg(int[] arr)
{
	int t = 0;
	
	for(int i = 0; i < arr.len; i++)
	{
		t = t + arr[i];
	}

	
	return (float)t / (float)(arr.len);
}

/**
 * Calculate factorial (n!)
 * 计算阶乘 n!
 */
fn int fcl(int num)
{
	int t = 1;
	int n = num;
	for(int i = 0;i<n;i++)
	{
		t = t * num;
		num--;
	}
	return t;
}

/**
 * Calculate Fibonacci sequence number
 * 计算斐波那契数列第n项
 */
fn int fib(int n)
{
    if (n <= 2) return 1;  

    int a = 1;
	int b = 1;
    int c = 0;

    for (int i = 3; i <= n; i++)
    {
        c = a + b;  
        a = b;       
        b = c;       
    }
    return b;
}

/**
 * Limit the value within the range [min, max]
 * 限制数值在 [最小值, 最大值] 范围内
 */
fn int clamp(int value,int min,int max)
{
	if(value < min)
	{
		return min;
	}
	if(value > max)
	{
		return max;
	}
	else{
		return value;
	}
}