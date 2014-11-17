##
##
def seconds_to_years(seconds)
  minutes = seconds / 60.000
  hours = minutes / 60
  days = hours / 24
  years = days / 365
  months_remaining = (years - years.floor) * 12
  weeks_remaining = (months_remaining - months_remaining.floor) * 4
  days_remaining = (weeks_remaining - weeks_remaining.floor) * 7
  hours_remaining = (days_remainging - days_remaining.floor) * 24
  minutes_remaining = (hours_remaining - hours_remaining.floor) * 60
  seconds_remaining = (minutes_remaining - mintues_remaining.floor) * 60
  
  p "I'm #{years.floor} years #{months_remaining.floor} months #{weeks_remaining.floor} weeks #{days_remaining.floor} days #{hours_remaining.floor} hours #{minutes_remaining.floor} minutes #{seconds_remaining.floor} seconds old"
end

seconds_to_years(979000000)
seconds_to_years(2158493738)
seconds_to_years(246144023)
seconds_to_years(1270166272)
seconds_to_years(1025600095)

