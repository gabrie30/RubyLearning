#Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. This method should return the temperature in degrees Celsius.

#To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows:

def convert(f)
  (f - 32.0) * 5 / 9
end

if __FILE__ == $PROGRAM_NAME
  # Write here what is happening on line 12?  We included file 1c_prompt.
  # i think that because we are using the prompt method from another file, we need to
  # tell ruby where that method is....so it will look in that file we are requiring
  # I have the habit of not changing into subfolders, this way I always know where I am.  So,
  # I run the program from the "project root" which is in this case JayGabrial/. and then in that
  # folder there is the ?_week/ folder pattern.  So I know where to find the files I want to
  # include from there.  Literally, current_folder/2_week/prompt.rb.
  # Clear?
  # This is loading a file, and we are using the methods that are there
  require './2_week/1c_prompt'
  #
  # ok cool, so why is it asking those other questions?
  # those run because we call the prompt mehtod in the line below correct?
  _Fahrenheit =  prompt("What temperature in F would you like to convert? ").to_f
  printf('%.2fF = %.2fC', _Fahrenheit, convert(_Fahrenheit))
end

