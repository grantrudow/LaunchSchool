SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length_m = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width_m = gets.chomp.to_f

area_m = (length_m * width_m).round(2)
area_f = (area_m * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_m} square meters (#{area_f} square feet)."


