def sum(num)
  digits = num.to_s.chars.map(&:to_i).reduce(:+)
  # sum = 0

  # digits.each do |number|
  #   sum += number
  # end  

  # sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)