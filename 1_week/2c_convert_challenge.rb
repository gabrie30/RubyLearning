# doctest: if ask_user returns a converting_to should equal Fahrenheit...etc
# >> %w(a b c d e).collect { |code| conversion_selector(code) }
# => ["Fahrenheit", "Celsius", "Kelvin", "Rankine", false]
def conversion_selector(code_letter)
  case code_letter
  when 'a'
    'Fahrenheit'
  when 'b'
    'Celsius'
  when 'c'
    'Kelvin'
  when 'd'
    'Rankine'
  else
    false
  end
end
UNITS = {'farhrenheit' => 'Fahrenheit', 'celsius' => "Celsius", "kelvin" => "Kelvin", "rankine" => "Rankine"}
def prompt(message, with_chomp: true)
  puts message
  response = gets
  with_chomp ? response.chomp : response
end

def menu(to_or_from)
  %(Please select your initial temperature you are converting %s:
     a. Fahrenheit
     b. Celsius
     c. Kelvin
     d. Rankine) % to_or_from
end
def process_temps

  ran(degrees, convert_to, initial_unit)
end

# I could make the function calls more DRY, because the last argument is the only one that changes,
# however I would still need to create another variable for each if/else so I left it like it is
# will think about how I can solve this problem

# doctest: The API is call the unit name that you want to convert from, and send it degrees and convert_to_unit
# >> fahrenheit -40, 'Celsius'
# => -40
def fahrenheit(deg, convert_to)
  if convert_to == 'Celsius'
    (deg - 32) * 5 / 9
  elsif convert_to == 'Kelvin'
    (deg + 459.67) * 5 / 9
  elsif convert_to == 'Rankine'
    deg + 459.67
  elsif convert_to == 'Fahrenheit'
    deg
  end
end

def celsius(deg, convert_to)
  if convert_to == 'Kelvin'
    deg + 273.15
  elsif convert_to == 'Rankine'
    (deg + 273.15) * 9 / 5
  elsif convert_to == 'Fahrenheit'
    deg *  9 / 5 + 32
  elsif convert_to == 'Celsius'
    deg
  end
end

def kelvin(deg, convert_to)
  if convert_to == 'Rankine'
    deg * 9 / 5
  elsif convert_to == 'Fahrenheit'
    deg * 9 / 5 - 459.67
  elsif convert_to == 'Celsius'
    deg - 273.15
  elsif convert_to == 'Kelvin'
    deg
  end
end

def rankine(deg, convert_to)
  if convert_to == 'Fahrenheit'
    deg - 459.67
  elsif convert_to == 'Celsius'
    (deg - 491.67) * 5 / 9
  elsif convert_to == 'Kelvin'
    deg * 5 / 9
  elsif convert_to == 'Rankine'
    deg
  end
end


def report(deg, initial_unit, convert_to, answer)
  "#{deg} degrees #{initial_unit} converts to #{answer} degrees #{convert_to}"
end
if __FILE__ == $PROGRAM_NAME
  answers = [prompt("How many degrees? "), conversion_selector(prompt(menu('from'))), conversion_selector(prompt(menu('to')))]
  p "Here are your answers: #{answers}"
  puts send(answers[1].downcase, answers[0].to_f, answers[2])
end
