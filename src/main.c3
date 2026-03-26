module c3_math;
import std::io;
import math;

fn int main(String[] args)
{
	int num = math::fib(3);
	int num1 = math::fib(2);
	io::printn(num);
	io::printn(num1);

    return 0;
}