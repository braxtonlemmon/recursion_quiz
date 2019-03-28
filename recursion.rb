def reverse_append(array, n)
	return array if n < 0
	reverse_append(array, n - 1)
	array << n
	array
end

p reverse_append([], -1)
p reverse_append([], 0)
p reverse_append([], 5)

=begin
def append(array, n)
	return array if n < 0
	array << n
	append(array, n -1)
end

p append([], 2) # => [2, 1, 0]
p append([], 3) # => [3, 2, 1, 0]
p append([], 88)
p append([], 0)
=end

=begin
def sum(n)
	return 1 if n == 1 
	return sum(n - 1) + n
end

puts sum(1)
puts sum(2)
puts sum(99)
=end


=begin
def rock_judger(rocks_arr)
	if rocks_arr.length <= 2
		a = rocks_arr[0]
		b = rocks_arr[-1]
	else
		a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
		b = rock_judger(rocks_arr)
	end

	return a > b ? a : b
end

rocks = 30.times.map { rand(200) + 1 }
puts rocks.join(", ")
puts "Heaviest rock is: #{rock_judger(rocks)}"
=end

=begin
#make some random rocks
rocks = 30.times.map { rand(200) + 1 }
puts rocks.join(", ")
max_rock = 0

rocks.each do |rock|
	max_rock = rock if max_rock < rock
end

puts "Heaviest rock is: #{max_rock}"

## or with inject
puts "Heaviest rock is: #{rocks.inject { |max_rock, rock| max_rock > rock ? max_rock : rock }}"
=end