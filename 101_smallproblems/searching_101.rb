puts "Enter the 1st number"
n1 = gets.chomp.to_i

puts "Enter the 2nd number"
n2 = gets.chomp.to_i

puts "Enter the 3rd number"
n3 = gets.chomp.to_i

puts "Enter the 4th number"
n4 = gets.chomp.to_i

puts "Enter the 5th number"
n5 = gets.chomp.to_i

puts "Enter the last number"
last = gets.chomp.to_i

range_of_n = [n1, n2, n3, n4, n5]

if range_of_n.include?(last)
  puts "The number #{last} appears in #{range_of_n}"
else
  puts "The number #{last} does not appear in #{range_of_n}"
end

