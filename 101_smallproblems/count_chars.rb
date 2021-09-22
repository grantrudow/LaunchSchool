print "Please write a word or multiple words: "
your_string = gets.chomp
your_string_split = your_string.split.join

p your_string
p your_string_split
puts "There are #{your_string_split.size} characters in \"#{your_string}\"."