# Exercise3. Write a Ruby program that displays how old I am, in years, if I am
# 979000000 seconds old. Display the result as a floating point (decimal) number
# to two decimal places (for example, 17.23).
#
# Note: To format the output to say 2 decimal places, we can use the Kernel's
# format method. For example, if x = 45.5678 then format("%.2f", x) will return
# the string 45.57

# doctest: A years worth of seconds should be 1 year
# >> seconds_to_years 31536000
# => 1.0
# doctest: Given the exercise question of 9.79e8
# >> seconds_to_years 9.79e8
# => 31.04388635210553
def seconds_to_years(seconds)
  minutes = seconds / 60.0
  hours = minutes / 60
  days = hours / 24
  days / 365
end

#doctest: Our display is as per the description
#>> display(9.79e8)
#=> "31.04"
def display seconds
  sprintf("%.2f", seconds_to_years(seconds))
end

if __FILE__ == $PROGRAM_NAME
  seconds_old = 979_000_000
  puts "Our age in seconds is #{seconds_old} so we are #{display seconds_old} years old."
end
