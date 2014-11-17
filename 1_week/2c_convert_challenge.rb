def ask_user
  puts "
  Please select your initial temerature you are converting from:
   a. Fahrenheit
   b. Celsius
   c. Kelvin
   d. Rankine

   "
   choice = gets.chomp

   puts "How many degrees would you like to convert: "
   degrees = gets.to_i

   if choice == "a"
    far(degrees)
   elsif choice == "b"
    cel(degrees)
   elsif choice == "c"
    kel(degrees)
   elsif choice == "d"
    ran(degrees)
   end

end

def far(deg)
  cel = (deg - 32) * 5 / 9
  kel = (deg + 459.67) * 5 / 9
  ran = deg + 459.67
  far = deg
  far_n = "Fahrenheit"
  output(deg,far_n,cel,kel,ran,far)
end

def cel(deg)
  kel = deg + 273.15
  ran = (deg + 273.15) * 9/5
  far =  deg *  9 / 5 + 32
  cel = deg
  cel_n = "Celsius"
  output(deg,cel_n,cel,kel,ran,far)
end

def kel(deg)
  ran = deg * 9 / 5
  far = deg * 9 / 5 - 459.67
  cel = deg - 273.15
  kel = deg
  kel_n = "Kelvin"
  output(deg, kel_n,cel,kel,ran,far)
end

def ran(deg)
  far = deg - 459.67
  cel =  (deg - 491.67) * 5 / 9
  kel = deg * 5 / 9
  ran = deg
  ran_n = "Rankine"
  output(deg,ran_n,cel,kel,ran,far)
end

def output(initial_temp, initial_unit, cel, kel, ran, far)
  p "#{initial_temp} degrees #{initial_unit} converts to"
  p "######################################################"
  p "#{cel} degrees Celsius"
  p "#{kel} degrees Kelvin"
  p "#{ran} degrees Rankine"
  p "#{far} degrees Fahrenheit"
end

ask_user
