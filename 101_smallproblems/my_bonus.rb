def calculate_bonus(salary, half_salary)
  bonus = 0

  if half_salary
    bonus = salary / 2
  end

  bonus
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)