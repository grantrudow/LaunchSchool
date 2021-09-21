puts "What is your name?"
user_name = gets.chomp

if user_name.chars.last == '!'
  user_name = user_name[0...-1]
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name.capitalize}"
end
