def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_n = gets.chomp.to_i

prompt("Enter the second number:")
second_n = gets.chomp.to_i

sum = first_n + second_n
prompt("#{first_n} + #{second_n} = #{sum}")

subtract = first_n - second_n
prompt("#{first_n} - #{second_n} = #{subtract}")

product = first_n * second_n
prompt("#{first_n} * #{second_n} = #{product}")

divisor = first_n / second_n
prompt("#{first_n} / #{second_n} = #{divisor}")

remainder = first_n % second_n
prompt("#{first_n} % #{second_n} = #{remainder}")

exponent = first_n ** second_n
prompt("#{first_n} ** #{second_n} = #{exponent}")