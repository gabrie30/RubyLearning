class Dog
  attr_reader :tricks

  def initialize(name)
    @name = name
    @tricks = Hash.new {-> {"I can't do that"}}
  end

  def bark
    "woof woof"
  end

  def eat
    "#{@name} is eating."
  end

  def chase_cat
    "#{@name} is chasing the cat."
  end

  def teach_trick(trick_name, &trick)
    @tricks[trick_name] = trick # => #<Proc:0x007f596e74fc10@/tmp/seeing_is_believing_temp_dir20141212-17557-nac0yx/program.rb:41>, #<Proc:0x007f596e74f238@/tmp/seeing_is_believing_temp_dir20141212-17557-nac0yx/program.rb:47>, #<Proc:0x007f596e74e8d8@/tmp/seeing_is_believing_temp_dir20141212-17557-nac0yx/program.rb:51>
  end

  def method_missing(m, *args, &blk)
    [m, args] # => [:dance, []], [:swim, []], [:poo, []], [:dance, []], [:laugh, []], [:laugh, []], [:dance, []], [:laugh, ["somberly"]]
    @tricks[m].call
  end
  # read up on this a bit, don't forget the responds_to_missing method that accompanies something like this.
  # figure out how to dynamically define a method so we don't have to maintain a hash, we can let Ruby do the housekeeping.
  # We also won't need to have it respond as true for rresponds_to_missing, and
  # we don't have to manage the responds_to behavior, as it will naturally
  # respond to a method that is dynamically created
  # Right now, we don't have dance_trick as a name, with identifiable pattern
  # of '_trick' to identify a legitimate potential to be handled by
  # method_missing or a typo by a programmer.

end

d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{d.instance_variable_get(:@name)} is dancing!" }
d.tricks # => {:dance=>#<Proc:0x007f596e74fc10@/tmp/seeing_is_believing_temp_dir20141212-17557-nac0yx/program.rb:41>}
d.dance # => "Lassie is dancing!"
d.swim # => "I can't do that"

d.tricks[:dance].call # => "Lassie is dancing!"
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
d2 = Dog.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
d3 = Dog.new('Stimpy')
puts d3.dance
puts d3.laugh('somberly')


# >>  is a smelly doggy!
# >> I can't do that
# >>  finds this hilarious!
# >> I can't do that
# >> I can't do that
# >> I can't do that
