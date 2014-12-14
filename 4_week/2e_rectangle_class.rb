class Rectangle
 
  def initialize(length, width)
    @area = length * width
    @perimeter = 2 * ( length + width )
  end
 
  def area
    @area 
  end
 
  def perimeter
    @perimeter
  end
 
end
 
r = Rectangle.new(23.45, 34.67) 
puts r.area
puts r.perimeter
