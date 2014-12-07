class Dog

  def initialize(name)
    @name = name
  end

  def bark
    puts "woof woof"
  end

  def eat
    puts "#{@name} is eating."
  end

  def chase_cat
    puts "#{@name} is chasing the cat."
  end
  
 end
leo = Dog.new('Leo')

leo.bark
leo.eat
leo.chase_cat