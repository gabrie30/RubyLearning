class Grandma
  def initialize(name: 'Ginny', deafness: 3)
    @name = name
    @deafness = deafness
  end

  def greeting
    'Hello, Sonny.  My hearing aids batteries are dead, you will need to yell!'
  end

  def farewell
    'Great talking with you, Sonny!'
  end

  def answers_back(statement)
    return '' if bye?(statement) || silence?(statement)
    reset_bye_count
    heard?(statement) ?
      "NO!, NOT SINCE #{(1930..1950).to_a.sample}" :
      'HUH! SPEAK UP SONNY!'
  end

  def kicks_me_out
    @count == @deafness
  end

  private

  def reset_bye_count
    @count = 0
  end

  def bye?(statement)
    @count ||= 0
    statement == 'BYE' && @count += 1
  end

  def silence?(statement)
    statement.empty?
  end

  def heard?(statement)
    statement.upcase == statement
  end
end

def what_I_say
  gets.chomp
end

if __FILE__ == $PROGRAM_NAME
  my_grandma = Grandma.new(deafness: 3, name: 'Nanny')
  puts my_grandma.greeting
  until my_grandma.kicks_me_out
    puts my_grandma.answers_back(what_I_say)
  end
  puts my_grandma.farewell
end
