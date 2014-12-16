class Shape
  def rotate
    "The shape has been rotated"
  end

  def play_sound(file)
    file
  end

  def to_s
    "I am a #{self.class}"
  end
end

class Square < Shape
  def play_sound
    square_sound = "La La La I'm a square"
    super(square_sound)
  end
end
 

class Triangle < Shape
  def play_sound
    triangle_sound = "Tra lala I'm a triangle"
    super(triangle_sound)
  end
end


s = Square.new
puts s
puts s.rotate
puts s.play_sound
t = Triangle.new
puts t
puts t.rotate
puts t.play_sound