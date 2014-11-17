def ask_user
  puts %Q{Please select your initial temperature you are converting from:
     a. Fahrenheit
     b. Celsius
     c. Kelvin
     d. Rankine}

  choice = gets.chomp.downcase

  puts "How many degrees would you like to convert: "
  degrees = gets.to_i

  puts %Q{What would you like to convert into?
     a. Fahrenheit
     b. Celsius
     c. Kelvin
     d. Rankine}

  convert_to = gets.chomp.downcase

# you will enter the function of the initial unit to solve for the desired answer
# for example if a user wants to convert Kelvin 'kel' to Celsius 'cel' -- you will enter the kel method

   if convert_to == "a"
    converting_to = "Fahrenheit"
   elsif convert_to == "b"
    converting_to = "Celsius"
   elsif convert_to == "c"
    converting_to = "Kelvin"
   elsif convert_to == "d"
    converting_to = "Rankine"
   else
      puts "That's not an option try again"
   end

  if choice == "a"
    initial_unit = "Fahrenheit"
    far(degrees,converting_to,initial_unit)
  elsif choice == "b"
    initial_unit = "Celsius"
    cel(degrees,converting_to,initial_unit)
  elsif choice == "c"
    initial_unit = "Kelvin"
    kel(degrees,converting_to,initial_unit)
  elsif choice == "d"
    initial_unit = "Rankine"
    ran(degrees,converting_to,initial_unit)
  else
    puts "That's not an option try again"
  end

end

# I could make the function calls more DRY, because the last argument is the only one that changes,
# however I would still need to create another variable for each if/else so I left it like it is
# will think about how I can solve this problem

def far(deg,converting_to,initial_unit)
  if converting_to == "Celsius"
    cel = (deg - 32) * 5 / 9
    output(deg,initial_unit, converting_to, cel)
  elsif converting_to == "Kelvin"
    kel = (deg + 459.67) * 5 / 9
    output(deg,initial_unit, converting_to, kel)
  elsif converting_to == "Rankine"
    ran = deg + 459.67
    output(deg,initial_unit, converting_to, ran)
  elsif converting_to == "Fahrenheit"  
    far = deg
    output(deg,initial_unit, converting_to, far)
  end
end

def cel(deg,converting_to,initial_unit)
  if converting_to == "Kelvin"
    kel = deg + 273.15
    output(deg,initial_unit, converting_to, kel)
  elsif converting_to == "Rankine"
    ran = (deg + 273.15) * 9/5
    output(deg,initial_unit, converting_to, ran)
  elsif converting_to == "Fahrenheit" 
    far =  deg *  9 / 5 + 32
    output(deg,initial_unit, converting_to, far)
  elsif converting_to == "Celsius"
    cel = deg
    output(deg,initial_unit, converting_to, cel)
  end
end

def kel(deg,converting_to,initial_unit)
  if converting_to == "Rankine"
    ran = deg * 9 / 5
    output(deg,initial_unit, converting_to, ran)
  elsif converting_to == "Fahrenheit"
    far = deg * 9 / 5 - 459.67
    output(deg,initial_unit, converting_to, far)
  elsif converting_to == "Celsius"
    cel = deg - 273.15
    output(deg,initial_unit, converting_to, cel)
  elsif converting_to == "Kelvin"
    kel = deg
    output(deg,initial_unit, converting_to, kel)
  end
end

def ran(deg,converting_to,initial_unit)
  if converting_to == "Fahrenheit"
    far = deg - 459.67
    output(deg,initial_unit, converting_to, far)
  elsif converting_to == "Celsius"
    cel =  (deg - 491.67) * 5 / 9
    output(deg,initial_unit, converting_to, cel)
  elsif converting_to == "Kelvin"  
    kel = deg * 5 / 9
    output(deg,initial_unit, converting_to, kel)
  elsif converting_to == "Rankine"
    ran = deg
    output(deg,initial_unit, converting_to, ran)
  end
end

def output(deg, initial_unit, converting_to, answer)
 puts "#{deg} degrees #{initial_unit} converts to #{answer} degrees #{converting_to}"
end

ask_user
