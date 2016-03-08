# ex3.rb

letter = ["A", "B", "C", "D", "E"]

letter.each_with_index do | letter, index |
  puts "#{index + 1}. #{letter}"
end
