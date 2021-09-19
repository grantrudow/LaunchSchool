def digit_list(numbers)
  numbers.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)