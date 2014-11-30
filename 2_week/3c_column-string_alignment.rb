def printer(line_n)
longest_n = line_n.to_s.length
 
  line_n.times do |num|
    diff = longest_n - num.to_s.length
    space = " "
    format = space * diff.to_i
    puts "Line #{format}#{num}: some kind of latin text"
  end
end
 
printer(2000)