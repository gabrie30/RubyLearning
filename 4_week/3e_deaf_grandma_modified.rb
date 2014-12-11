class Grandma
  def initialize(name, count = 0, deafness = 3)
    @name = name
    @count = count
    @deafness = deafness
  end

  def done_talking?
    @count == @deafness
  end

  def count(you_ask)
    you_ask == 'BYE' ?  @count += 1 : @count = 0
  end

  def says(you_ask)
    heard?(you_ask) ?
      "#{@name} says: OH NO! Not since #{rand(1930..1950)}" :
      "#{@name} says: WHAT?! SONNY SPEAKUP I CAN'T HEAR YOU!"
  end

  def heard?(you_ask)
    yelled?(you_ask) unless bye?(you_ask) || silence?(you_ask)
  end

  def silence?(statement)
    statement.empty?
  end

  def yelled?(statement)
    statement == statement.upcase
  end

  def bye?(statement)
    statement == 'BYE'
  end
end
my_grandma = Grandma.new('Ginny')

puts 'What do you want to say to Grandma? '
until my_grandma.done_talking?
  print 'You say: '
  you_ask = gets.strip
  my_grandma.count(you_ask)
  puts my_grandma.says(you_ask)
end

puts "DON'T LET THE DOOR HIT YOU ON THE WAY OUT!"
