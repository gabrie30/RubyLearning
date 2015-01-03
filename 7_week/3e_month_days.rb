=begin
 Exercise3. Write a method called month_days, that determines the number of days in a month. Usage:
 
 days = month_days(5)  # 31 (May)
 
 days = month_days(2, 2000) # 29 (February 2000)
 
 Remember, you could use the Date class here. Read the online documentation for
 the Date class. You must account for leap years in this exercise.
=end

require 'date'

def month_days(month, year = Date.today.year)
  Date.civil(year, month, -1).day
end
 
days = month_days(2)
puts "The number of days in the month of February are %i" % days
days = month_days(5, 2000)
puts "The number of days in the month of May %i" % days
