module mz;

/* Numerical Operations / 数值运算 */

/**
 * Calculate the greatest common divisor of two numbers
 * 计算两个数的最大公约数
 */
fn Tybe gcd(Tybe a, Tybe b) <Tybe>
{
	Tybe t;          

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
fn Tybe lcm(Tybe a,Tybe b) <Tybe>
{
	return a*b/gcd(a,b);
}

/**
 * Returns the larger of two numbers
 * 返回两个数中较大的值
 */
fn Tybe max(Tybe a, Tybe b) <Tybe>
{
    return a > b ? a : b;
}

/**
 * Returns the smaller of two numbers
 * 返回两个数中较小的值
 */
fn Tybe min(Tybe a, Tybe b) <Tybe>
{
    return a < b ? a : b;
}

/**
 * Compare two numbers (1 if a>b, 2 if a<b, 0 if equal)
 * 比较两个数字大小（a大于b返回1，小于返回2，相等返回0）
 */
fn int mai(Tybe a, Tybe b) <Tybe>
 {	
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
 * Find the maximum value in float array and return its position (index+1)
 * 查找浮点数组中的最大值，并返回它的位置（下标+1）
 */
fn int maximumf(float[] nums, float* max_val)
{
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
 * Find the minimum value in float array and return its position (index+1)
 * 查找浮点数组中的最小值，并返回它的位置（下标+1）
 */
fn int minimumf(float[] nums, float* min_val) {
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
fn bool oe_num(Tybe num) <Tybe>
{
	if(num % 2 == 0)
	{
		return true;
	}
	
	return false;
}

/**
 * Calculate the absolute value of a number
 * 计算数值的绝对值
 */
fn Tybe abs(Tybe num) <Tybe>
{
	if(num < 0)
	{
		return -num;
	}
	return num;
}

/**
 * Swap the values of two variables
 * 交换两个变量的值
 */
fn Tybe swap(Tybe* a,Tybe* b) <Tybe>
{	
	Tybe c = *a;
	*a = *b;
	*b = c;
	return 0;
}

/**
 * Sum all elements of the array
 * 数组所有元素求和
 */
fn Tybe sum(Tybe[] nums) <Tybe>
{
    Tybe total = 0;  

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
fn Tybe product(Tybe[] nums) <Tybe>
{
    Tybe total = 1;  

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
fn void quickSort(Tybe[] a,int left,int right) <Tybe>
{
	int i = 0;
	int j = 0;
	Tybe t ;
	Tybe temp ;

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

	quickSort{Tybe}(a,left,i-1);
	quickSort{Tybe}(a,i+1,right);	
}

/**
 * Array sort (ascending order)
 * 数组排序（从小到大）
 */
fn void sort(Tybe[] arr) <Tybe>
{
    if (arr.len <= 1) return;
    quickSort{Tybe}(arr, 0, arr.len - 1);
}

/**
 * Reverse the array
 * 数组反转
 */
fn void reverse(Tybe[] arr) <Tybe>
{
    int left = 0;
    int right = arr.len - 1;

    while (left < right)
    {
        Tybe temp = arr[left];
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
fn Tybe avg(Tybe[] arr)  <Tybe>
{
	Tybe t;
	if (arr.len == 0) return {};
	for(int i = 0; i < arr.len; i++)
	{
		t = t + arr[i];
	}

	
	return t / arr.len;
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
fn Tybe clamp(Tybe value,Tybe min,Tybe max) <Tybe>
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

/* New Features / 新增功能 */

/**
 * Check if the array is empty
 * 判断数组是否为空
 */
fn bool isEmpty(Tybe[] arr) <Tybe>
{
    return arr.len == 0;
}

/**
 * Get the maximum value of the array
 * 获取数组中的最大值
 */
fn Tybe maxArr(Tybe[] arr) <Tybe>
{
	if (arr.len == 0) return {};
    Tybe m = arr[0];
    for (int i = 1; i < arr.len; i++) {
        if (arr[i] > m) m = arr[i];
    }
    return m;
}

/**
 * Get the minimum value of the array
 * 获取数组中的最小值
 */
fn Tybe minArr(Tybe[] arr) <Tybe>
{
	if (arr.len == 0) return {};
    Tybe m = arr[0];
    for (int i = 1; i < arr.len; i++) {
        if (arr[i] < m) m = arr[i];
    }
    return m;
}

/**
 * Check if the array contains the specified value
 * 判断数组是否包含指定的值
 */
fn bool contains(Tybe[] arr, Tybe val) <Tybe>
{
    for (int i = 0; i < arr.len; i++) {
        if (arr[i] == val) return true;
    }
    return false;
}

/**
 * Find the index of the specified value in the array, return -1 if not found
 * 查找指定值在数组中的下标，未找到返回-1
 */
fn int indexOf(Tybe[] arr, Tybe val) <Tybe>
{
    for (int i = 0; i < arr.len; i++) {
        if (arr[i] == val) return i;
    }
    return -1;
}

/**
 * Shuffle the array elements randomly
 * 随机打乱数组元素
 */
fn void shuffle(Tybe[] arr) <Tybe>
{
    for (int i = arr.len - 1; i > 0; i--) {
        int j = i % (i + 1);
        Tybe t = arr[i];
        arr[i] = arr[j];
        arr[j] = t;
    }
}
