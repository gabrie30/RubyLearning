def encrypt(board,encoding)
  board.each {|line| puts line.join("  ")}

# board_hash = Hash.new{|h,k| h[k] = []}

# board.each_with_index do |subarr,i|
#   subarr.each do |word|
#     board_hash[word] << i
#   end
# end
# p board_hash

end

def encoding(message)
  message = message.upcase.gsub(/\W*/,"").split("")
  i = 0
  container = []
  switch = 1
  while i < message.length
    letter1 = message[i]
    letter2 = message[i+1]
    if letter1 != letter2
      if letter2 == nil
        container << [letter1, "X"]
        i += 1
      else
        container << [letter1, letter2]
        i += 1 #if both letters go into the container we need to increase i by two
      end
    else (letter1 == letter2) && (container[-1][1] == "X") ? container << [letter1, "Z"] : container << [letter1, "X"]
    end
    i += 1
  end
  container
end


def set_table(phrase)
  phrase = phrase.upcase.gsub(" ","").gsub("J","I").split("")
  alphabet = ("A".."Z").to_a
  alphabet.delete("J")
  board = []
  until alphabet.length == 0 # there are 26 letters but only 25 available squares
      temp = []
      i = 0
    while i <= 4
      if phrase.length != 0
        temp << phrase[0]
        alphabet.delete(phrase[0])
        phrase.delete(phrase[0])
      else
        temp << alphabet[0]
        alphabet.delete(alphabet[0])
      end
      i += 1
    end
    board << temp
  end
  board
end

encrypt(set_table("playfair example"),encoding("hide yo kids hide yo wife"))