class Grandma

  def initialize(name, count=0, deafness=3)
    @name = name
    @count = count
    @deafness = deafness
  end

  def done_talking?
    if @count == @deafness
      true
    else
      false
    end
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
