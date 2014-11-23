s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s = s.split("\n")

s.each_with_index do |line, index|
  puts "Line #{index + 1}:  #{line}"
  end