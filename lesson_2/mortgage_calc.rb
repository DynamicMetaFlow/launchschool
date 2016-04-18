def prompt(message)
  Kernel.puts("=> #{message}")
end

  bal = ''

loop do
  prompt("What's the loan amount?")
  bal = Kernel.gets().chomp

  if bal.empty?() || bal.to_f() < 0
    prompt("Hmm... that doesn't look like a valid number")
  else
    break
  end
end

rate = ''

loop do
  prompt("What's the Annual Percentage Rate?")
  rate = Kernel.gets().chomp

  if rate.empty?() || rate.to_f() < 0
    prompt("Hmm... that doesn't look like a valid number")
  else
    break
  end
end

term = ''

loop do
  prompt("What's the loan duration?")
  term = Kernel.gets().chomp

  if term.empty?() || term.to_i() < 0
    prompt("Hmm... that doesn't look like a valid number")
  else
    break
  end
end

  # Convert annual rate to monthly and make it decimal.

  annual_interest_rate = rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = term.to_i() * 12

  monthly_payment = bal.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i()))

prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")
