# passing_block.rb

def take_block(number, &block)
  block.call(number)
end


number = 42
take_block(number) do |number|
  puts "Blocks being called in the method! #{number}"
end
