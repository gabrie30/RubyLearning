# this will take seconds and convert it to years, days, hours, minutes, seconds
# doctest: Seconds to minutes when given 60 will return 1
# >> seconds_to_minutes 60
# => 1
# doctest: 2 minutes worth of seconds should be 2
# >> seconds_to_minutes 120
# => 2
def seconds_to_minutes(seconds)
  seconds / 60
end
# doctest: minutes to hours should return 1 when given 60
# >> minutes_to_hours 60
# => 1
# doctest: minutes to hours should return 2 when given 120
# >> minutes_to_hours 120
# => 2
def minutes_to_hours(minutes)
  minutes / 60
end

# doctest: hours to days should return 1 when given 24
# >> hours_to_days 24
# => 1
def hours_to_days(hours)
  hours / 24
end
# doctest: day to years should return 1 when given 365
# >> days_to_years 365
# => 1
def days_to_years(days)
  days / 365
end

# doctest: months_in_year
# >> months_in_year
# => 12
def months_in_year
  12
end

# Takes an argument in seconds, and returns an 2 element array, the first
# (index 0) being year, the seconds being months.
# doctest: seconds_to_years_and_months
# >> seconds_to_years_and_months(60 * 60 * 24 * 365)
# => [1, 0]
# doctest: seconds_to_years_and_months
# >> seconds_to_years_and_months(60 * 60 * 24 * 365 * 2)
# => [2, 0]
# doctest: seconds_to_years_and_months
# >> seconds_to_years_and_months(60 * 60 * 24 * 365 * 2.5)
# => [2, 6]
# doctest: seconds_to_years_and_months
# >> seconds_to_years_and_months(60 * 60 * 24 * 365 * 3.15)
# => [3, 1]
# doctest: Bug found, when given a partial month of seconds and it is a float,
#          it works, but not when it is an integer of the samve value
# >> seconds_to_years_and_months(115421760)
# => [3, 7]
def seconds_to_years_and_months(seconds)
  years = days_to_years(hours_to_days(minutes_to_hours(
    seconds_to_minutes(seconds.to_f))))
  months = years % 1 * 12
  [years.floor, months.floor]
end

if __FILE__ == $PROGRAM_NAME
  seconds = 979_000_000
  remaining_years, remaining_months = seconds_to_years_and_months(seconds)
  puts "#{seconds} is #{remaining_years} years and #{remaining_months} months."
  puts seconds_to_years_and_months(979_000_000)
  puts seconds_to_years_and_months(2_158_493_738)
  puts seconds_to_years_and_months(246_144_023)
  puts seconds_to_years_and_months(1_270_166_272)
  puts seconds_to_years_and_months(1_025_600_095)
end
