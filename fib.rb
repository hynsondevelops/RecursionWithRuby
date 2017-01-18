def fib(n)
	firstIndex = 0;
	secondIndex = 1;
	puts firstIndex
	puts secondIndex
	currentValue = 0
	for i in 2...n
		currentValue = firstIndex + secondIndex;
		firstIndex = secondIndex
		secondIndex = currentValue
		puts currentValue
	end
end

def fib_rec(n)
	if (n == 0 || n == 1)
		return n
	else
		return fib_rec(n - 1) + fib_rec(n - 2)
	end
end


fib(20)


puts fib_rec(20)