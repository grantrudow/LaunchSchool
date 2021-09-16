require 'yaml'
MESSAGES = YAML.load_file('calculator_message.yml')
LANGUAGE = 'en'

def prompt(message)
  puts "=> #{message}"
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def integer?(num)
  /\A[+-]?\d+(\.[\d]+)?\z/.match(num)
end

def float?(num)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  word =  case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end
  word
end

# Ask for two numbers
prompt(messages('welcome'))

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt(messages('valid_name', 'es'))
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('ask_number1'))
    number1 = gets.chomp

    if integer?(number1)
      break
    else
      prompt(messages('invalid_number'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('ask_number2'))
    number2 = gets.chomp

    if integer?(number2)
      break
    else
      prompt(messages('invalid_number'))
    end
  end

  # Ask for the type of operation (add, subtract, multiply, divide)
  # Doesn't have to be MSG (as long as the 3 letters match you're good)
  operator_prompt = <<-MSG
  What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  operator = ''
  loop do
    prompt(operator_prompt)
    operator = gets.chomp

    # Validating if operator includes one of the options from the array
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('invalid_operator'))
    end
  end
  # Perform the operation

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when "1"
              number1.to_i + number2.to_i
            when "2"
              number1.to_i - number2.to_i
            when "3"
              number1.to_i * number2.to_i
            when "4"
              number1.to_f / number2.to_f
            end

  # Display the results

  prompt("Your total is #{result}")

  prompt(messages('perform_again'))
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt(messages('goodbye'))
