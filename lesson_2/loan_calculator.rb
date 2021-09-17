require 'rubocop'
require 'yaml'
require 'pry'

def prompt(message)
  puts "==== #{message} ==="
end

def valid_amount?(num)
  /\A[+-]?\d+(\.[\d]+)?\z/.match(num) && num.to_i >= 0
end

def valid_rate?(num)
  /\d*[,]?\d*\.\d+[%]?/.match(num)
end

def valid_duration?(num)
  /\A[+-]?\d+(\.[\d]+)?\z/.match(num) && num.to_i >= 0
end

prompt('Welcome to the master loan calculator!')

loop do
  loan_amount = ''
  loop do
    prompt('How much are you looking to borrow?')
    loan_amount = gets.chomp

    if valid_amount?(loan_amount)
      break
    else
      prompt("Invalid amount")
    end
  end

  annual_rate = ''
  loop do
    prompt('What is the current APR? Use percentage format (ex: 5.2%')
    annual_rate = gets.chomp

    if valid_rate?(annual_rate)
      break
    else
      prompt("Invalid number")
    end
  end

  year_duration = ''
  loop do
    prompt('How many years is your loan for?')
    year_duration = gets.chomp

    if valid_duration?(year_duration)
      break
    else
      prompt('Invalid entry')
    end
  end

  prompt("Your #{year_duration} year loan of $#{loan_amount} is being calculated at a rate of #{annual_rate}%")

  monthly_duration = year_duration.to_f * 12
  monthly_rate = (annual_rate.to_f / 12) / 100
  monthly_payment = loan_amount.to_i * (monthly_rate / (1 - (1 + monthly_rate)**(-monthly_duration)))

  prompt("=====================")
  prompt("Your monthly payment = $#{format('%.2f', monthly_payment)}")
  prompt("=====================")

  prompt("Would you like to calculate anything else? (Y/N)")
  calc_again = gets.chomp.downcase

  break if calc_again != 'y'
end
