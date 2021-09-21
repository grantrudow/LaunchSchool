puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
desired_age = gets.chomp.to_i

current_year = Time.new.year
remaining_years = (desired_age - current_age)
retired_year = current_year + remaining_years


puts "It's #{current_year}. You will retire in #{retired_year}."
puts "You have only #{remaining_years} years of work to go!"
