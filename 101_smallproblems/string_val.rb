def ascii_value(string)
  values_array = []

  if string.length == 0
    0
  else
    array = string.chars.to_a
    array.each do |char|
      values_array << char.ord
    end
  end

  sum_values = 0
  values_array.each do |num|
    sum_values += num
  end

  sum_values
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
