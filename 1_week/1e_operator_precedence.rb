
def my_string
  'Hello World' 
end
 
puts my_string
my_string = 'Hello Ruby World'

puts my_string


# Not sure if its just me but both of those links direct to a lot of nonsensical html.

# With regards to this exercise. The reason I think the variable gets executed and not the method is as follows.

# The interpreter starts on line 1 and it assgins the variable my_string = "Hello Ruby World" then it continues 
# on to the method my_string. However the interpreter will not enter a method unless its called upon, so it moves on. Once it 
# hits my_string it prints the "Hello Ruby World" because thats what my_string has been assigned to.

# The reason I think this is what is happening is because if you take the code from line 1, move it to line 8, and
# keep everything else the same the program will enter the method and will return "Hello World". 

# This is because the interpreter will first see the method, but won't enter because it hasn't been called, move on to 
# line 6 which will then call the method, after the method has been called it will move on to line 7 which will reassign 
# the my_string from the method to the string "Hello Ruby World" then the program will exit. 
# You can confirm all of this by running the code attached.
