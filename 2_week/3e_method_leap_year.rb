# Write a method leap_year?. It should accept a year value from the user, 
# check whether it's a leap year, and then return true or false. With the 
# help of this leap_year?() method calculate and display the number of minutes 
# in a leap year (2000 and 2004) and the number of minutes in a non-leap year 
# (1900 and 2005). Note: a century year, like 1900 and 2000, is a leap year only 
# if it is divisible by 400.

def prompt
  puts "What year would you like to check as a leap year? "
  year = gets.to_i
  leap_year?(year)
end

def leap_year?(year)
  if year <= 0
    puts "Please enter a year greater than zero"
  elsif year % 100 == 0 && year % 400 == 0
    return true
  elsif year % 100 != 0 && year % 4 == 0
    return true
  else
    return false
  end
end


  minutes_not_leap = ( 60*60*24*365 )
  minutes_leap = ( 60*60*24*366 )

  if prompt == true
    puts "This is a leap year. There are #{minutes_leap} minutes in this year"
  else
    puts "This is not a leap year. There are #{minutes_not_leap} minutes in this year"
  end


