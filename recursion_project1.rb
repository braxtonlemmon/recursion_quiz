# Fibonacci with iteration

def fibs(n)
	(0..n).each_with_object([]) do |num, array|
		num < 2 ? (array << num) : (array << array[num-1] + array[num-2])
	end
end

p fibs(5)
p fibs(10)

# Fibonacci with recursion

def fibs_rec(n, array = [0,1])
	return array if n < 2
	array << array[-1] + array[-2]
	fibs_rec(n-1, array)
end

p fibs_rec(5)
p fibs_rec(10)
