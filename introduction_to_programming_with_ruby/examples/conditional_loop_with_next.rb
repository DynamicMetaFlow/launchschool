# conditional_loop_with_next.rb

x = 0

while x <= 10 # while the value of x is 10
if x == 3 # if x equals 3
  x += 1 # increment by 1
  next # when the increment counter reaches 3 go to the elsif statement
elsif x.odd? #if the number is odd
  puts x # show x
end
x += 1 # increment of 1 otherwise
end
