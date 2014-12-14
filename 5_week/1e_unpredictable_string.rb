class UnpredictableString < String
  def scramble
    ret_string = ""
    string = self.split("").shuffle
    string.each do |letter|
      ret_string << letter
      end
    ret_string
  end
end


a = UnpredictableString.new("hello there world")
p a.scramble
