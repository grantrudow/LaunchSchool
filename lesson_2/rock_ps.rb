VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

def prompt(message)
  puts("==> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_score = 0
computer_score = 0

loop do
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp

      choice =  case choice
                when 'r'
                  'rock'
                when 'l'
                  'lizard'
                when 'p'
                  'paper'
                when 's'
                  'spock'
                else
                  'Invalid choice'
                end


      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice} and the computer chose #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    else
      player_score += 0
    end

    if player_score == 3
      prompt("The player won it all #{player_score} to #{computer_score}")
      break
    elsif computer_score == 3
      prompt("The computer beat you #{computer_score} to #{player_score}!")
      break
    else
      prompt("Current Score: Player => #{player_score} Computer => #{computer_score}")
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end


prompt("Thank you for playing!")
