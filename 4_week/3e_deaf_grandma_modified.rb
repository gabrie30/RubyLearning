# Exercise3.
# - Modify your Deaf Grandma program (Week 3 / Exercise6):
# What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you.
# Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or BYE BYE BYE, Grandma should pretend not to hear you (and not count it as a BYE).
# From Chris Pine's Book.

class Grandma

  def initialize(name, count=0, deafness=3)
    @name = name
    @count = count
    @deafness = deafness
  end

  def done_talking?
    @count == @deafness ? true : false
  end

  def count(you_ask)
    if you_ask == "BYE"
      @count += 1
    else
      @count = 0
    end
  end

  def says(you_ask)
    if you_ask != "BYE" && you_ask == you_ask.upcase && you_ask != ""
      "#{@name} says: OH NO! Not since #{rand(1930..1950)}"
    else
      "#{@name} says: WHAT?! SONNY SPEAKUP I CAN'T HEAR YOU!"
    end
  end

end

my_grandma = Grandma.new('Ginny')

puts "What do you want to say to Grandma? "
until my_grandma.done_talking?
  print "You say: " 
  you_ask = gets.strip
  my_grandma.count(you_ask)
  puts my_grandma.says(you_ask)
end

puts "DON'T LET THE DOOR HIT YOU ON THE WAY OUT!" 
