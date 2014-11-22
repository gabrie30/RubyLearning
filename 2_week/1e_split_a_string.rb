#
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s = s.split("\n")
i = 1
while i < s.length

	s.each do |line|
		puts "Line #{i}:  #{line}"
		i += 1
	end

end
