def ask_user
  puts '
  Please select your conversion

  a. Fahrenheit => Celsius
  b. Celsius => Fahrenheit

  '
  choice = gets.chomp
  puts "Please enter the degrees you would like to convert: "
  degrees = gets.chomp.to_i

  choice == "a"? far_to_cel(degrees_) : cel_to_far(degrees)
end

def far_to_cel(deg)
  cel = (((deg - 32.00) * 5) / 9)
  cel = cel.round(2)
  p "#{deg} degrees Fahrenheit is equal to #{cel} degrees Celsius"
end

def cel_to_far(deg)
  far = (((deg * 9.00) / 5) + 32)
  far = far.round(2)
  p "#{deg} degrees Celsius is equal to #{far} degrees Fahrenheit"
end

ask_user
