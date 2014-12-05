# Not really testable, as it is interactive, that makes it hard.
def prompt string, chomp: nil  # this is a named parameter and it is a hash
  # The variable of the name represented in the named argument is automatically assigned and is
  # available
  puts string
  user_input = gets
  chomp ? user_input.chomp : user_input
end

if __FILE__ == $0
  puts prompt("What is your favorite color? ", chomp: true)
end
