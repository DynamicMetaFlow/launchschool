# guess.rb

puts "Enter a number:"
input = gets.chomp.to_i

guess = case
        when input < 50
          puts "The #{input} is between 0 and 50"
        when input > 50 && input <= 100
          puts "#{input} is between 51 and 100"
        when input > 100
          puts "#{input} is above 100."
        end
