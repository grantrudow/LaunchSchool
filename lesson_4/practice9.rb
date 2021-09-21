words = "the flintstones rock"
capitalized = []

words.split(' ').each do |word|
  capitalized << word.capitalize
end

p capitalized.join(' ')