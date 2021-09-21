puts "How much was the bill?"
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

def calculate_tip(amount, tip)
  tip = (amount * (tip / 100)).round(2)
end

tip_amount = calculate_tip(bill_amount, tip_percent)
total_amount = (bill_amount + tip_amount).round(2)

puts "The tip is $%0.2f" % [tip_amount]
puts "The total is $%0.2f" % [total_amount]