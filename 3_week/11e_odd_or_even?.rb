collection = [12, 23, 456, 123, 4579]

def odd_or_even(num)
  num % 2 == 0 ? "even" : "odd"
end

collection.each do |number|
  puts "The number #{number} is #{odd_or_even(number)}."
end