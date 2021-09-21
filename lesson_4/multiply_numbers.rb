def multiply(numbers, multiply_num)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * multiply_num

    counter += 1
  end

  p multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3)