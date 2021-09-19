def average(arr)
  total = 0

  arr.each do |num|
    total += num
  end

  total = total / arr.size
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

# Simplified

def average2(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end