VALID_CHOICES = %w(r p s sp l)

ABRV = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

def abrv_choices(choice)
  CHOICES[choice]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if (player == 'r' && computer == 's') ||
     (player == 'r' && computer == 'l') ||
     (player == 'p' && computer == 'r') ||
     (player == 'p' && computer == 'sp') ||
     (player == 's' && computer == 'p') ||
     (player == 's' && computer == 'l') ||
     (player == 'l' && computer == 'sp') ||
     (player == 'l' && computer == 'p') ||
     (player == 'sp' && computer == 'r') ||
     (player == 'sp' && computer == 's')
    prompt("You Won!")
  elsif
    (player == 'r' && computer == 'p') ||
      (player == 'r' && computer == 'sp') ||
      (player == 'p' && computer == 's') ||
      (player == 'p' && computer == 'l') ||
      (player == 's' && computer == 'r') ||
      (player == 's' && computer == 'sp') ||
      (player == 'l' && computer == 's') ||
      (player == 'l' && computer == 'r') ||
      (player == 'sp' && computer == 'p') ||
      (player == 'sp' && computer == 'l')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

choice_prompt = <<-MSG
  What would you like to choose?
    'r' for rock
    'p' for paper
    's' for scissors
    'sp' for spock
    'l' for lizard
  MSG

loop do
  choice = ''
  loop do
    prompt(choice_prompt)
    choice = gets.chomp
    break if %w(s p r sp l).include?(choice)
    prompt('You must make a valid choice')
  end
computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
