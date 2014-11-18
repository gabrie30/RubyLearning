#this will take seconds and convert it to years, days, hours, minutes, seconds

def seconds_converted(seconds)
	remaining_seconds = seconds % 60
	minutes = seconds / 60
	remaining_minutes = minutes % 60
	hours = minutes / 60
	remaining_hours = hours % 24 # know: 1 % 24 = 1
	days = hours / 24	     # now: days = 1 / 24 => 0 ; this continues
	remaining_days = days % 365 
	years = days / 365
	remaining_years = years % 365

puts "#{seconds} seconds is equal to #{remaining_years} years, #{remaining_days} days, #{remaining_hours} hours #{remaining_minutes} minutes #{remaining_seconds} seconds}"
end
seconds_converted(3600) 
 
seconds_to_years(979000000)
seconds_to_years(2158493738)
seconds_to_years(246144023)
seconds_to_years(1270166272)
seconds_to_years(1025600095)

