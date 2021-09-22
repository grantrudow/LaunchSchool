def multisum(num)
  range = (1..num).to_a
  result = 0
  
  range.each do |num|
    if num % 3 == 0 || num % 5 == 0
      result += num
    end
  end

  result

end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168