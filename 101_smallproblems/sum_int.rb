puts "Please enter an integer greater than 0:"
initial_int = gets.chomp.to_i

puts "Invalid entry" if initial_int <= 0

puts "Enter 's' to compute the sum, 'p' to compute the product"
sum_or_product = gets.chomp.downcase

decision =  case sum_or_product
            when 's'
              "sum"
            when 'p'
              "product"
            else
              "INVALID"
            end

range_of_values = (1..initial_int).to_a
return_sum = 0
return_product = 1

range_of_values.each do |num|
    return_product = return_product * num
end

return_value = 0

if sum_or_product == 's'
  return_value = range_of_values.inject(:+)
elsif sum_or_product == 'p'
  return_value = return_product
end 

puts "The #{decision} of the integers between 1 and #{initial_int} is #{return_value}"



