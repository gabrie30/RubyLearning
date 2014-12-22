class Shape
  def initialize(size,*location)
    @size = size #area in inches
    @location = location
  end

  def rotate
    "The shape has been rotated 360 degrees"
  end
 
  def play_sound(file)
    file
  end
 
  def to_s
    "I am a #{self.class} I have an area of #{@size} square inches, and a location on the coordinates #{@location}"
  end
end
 
class Square < Shape
end
 
 
class Triangle < Shape
end
 
 
s = Square.new(25, 133, 150)
puts s
puts s.rotate
puts s.play_sound("Song Playing: La La La I'm a square")
t = Triangle.new(18, 125, 35)
puts t
puts t.rotate
puts t.play_sound("Song Playing: Tra lala I'm a triangle")