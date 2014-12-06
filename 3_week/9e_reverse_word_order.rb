def reversey(string)
  reversed = ""
  string = string.split
 
  string.reverse.each do |word|
    reversed << word.downcase + " "
  end
  reversed
end
 
p reversey("Life is like a box of chocolates")
