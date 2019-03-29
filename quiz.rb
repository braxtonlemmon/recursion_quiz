#### Define a recursive function that finds the factorial of a number:

def find_factorial(n)
	return 1 if n == 0
	return find_factorial(n - 1) * n
end

p find_factorial(5) # => 120
p find_factorial(13) # => 6_228_020_800

#### Define a recursive function that returns true if a string is a palindrome 
# and false otherwise

def is_palindrome?(string)
	return false if string[0] != string[-1]
	return true if string.length < 2
	is_palindrome?(string[1..-2])
end

p is_palindrome?('civic')
p is_palindrome?('banana')
p is_palindrome?('moom')

### Define a recursive function that takes an argument n and prints 
# "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ...,
# "no more bottles of beer on the wall".

def beer(n)
	return puts "No more bottles of beer on the wall" if n == 0
	puts "#{n} more bottles of beer on the wall"
	beer(n-1)
end

beer(99)
beer(8)

### Define a recursive function that takes an argument n and return the fibonacci
# value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21...
# So fib(5) should return 5 and fib(6) should return 8.

def fib(n)
	if n == 0
		0
	elsif n == 1
		1
	else
		fib(n-1) + fib(n-2)
	end
end

puts fib(5)

### Defin a recursive function that flattens an array. The method should
# convert [[1,2], [3,4]] to [1,2,3,4] and [[1,[8,9]], [3,4]] to [1,8,9,3,4]

def flatten(array, results = [])
	array.each do |element|
		if element.is_a?(Array)
			flatten(element, results)
		else
			results << element
		end
	end
	results
end

p flatten([[1,2], [3,4]]) # => [1,2,3,4]
p flatten([[1, [8, 9]], [3,4]])
array = [1,2], [3,4]
results = [1,2]

### Use the roman_mapping hash to define a recursive method that converts an integer
# to a Roman numeral
roman_mapping = {
	1000 => "M",
	900 => "CM",
	500 => "D",
	400 => "CD",
	100 => "C",
	90 => "XC",
	50 => "L",
	40 => "XL",
	10 => "X",
	9 => "IX",
	5 => "V",
	4 => "IV",
	1 => "I"
}


def integer_to_roman(roman_mapping, number, final="")
	return final if number == 0
	roman_mapping.keys.each do |divisor|
		quotient, modulus = number.divmod(divisor)
		final << roman_mapping[divisor] * quotient
		return integer_to_roman(roman_mapping, modulus, final) if quotient > 0
	end
end


puts integer_to_roman(roman_mapping,50)
puts integer_to_roman(roman_mapping,51)
puts integer_to_roman(roman_mapping,49)
puts integer_to_roman(roman_mapping,105)