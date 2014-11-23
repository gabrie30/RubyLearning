# doctest: this will take a string, display that string as a prompt, and return what the user gives as an answer
# >> "Enter a year to see if its a leap year"
# => 2016
def prompt string
 puts string
 user_input = gets.chomp
 user_input
end


