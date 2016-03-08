# ex1.rb

def has_lab?(word)
  if word =~ /lab/
    puts word
  else
    puts "Lab was not found!"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pan's Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")
