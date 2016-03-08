# ex5.rb
# Missing the '&' symbol on block to cal it

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
