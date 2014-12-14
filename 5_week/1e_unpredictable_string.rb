class Crazy < String
  def scramble
    ret_string = ""
    string = self.split("").shuffle
    string.each do |letter|
      ret_string << letter
      end
    ret_string
  end
end


a = Crazy.new("hello there world")
p a.scramble