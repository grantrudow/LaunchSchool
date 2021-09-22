NUMBER_WORDS = %w(zero one two three four five six 
  seven eight nine ten eleven twelve thirteen fourteen 
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(int_array)
  word_hash = Hash.new(0)
  sorted_array = []
  counter = 0

    int_array.each do |int|
      word_hash[int] = NUMBER_WORDS[counter]
      counter += 1
    end

  sorted_array = word_hash.sort_by { |key, val| val }.to_h

  sorted_array.keys
end

p alphabetic_number_sort((0..19).to_a)  == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Alternate

def alphabetic_number_sort1(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

