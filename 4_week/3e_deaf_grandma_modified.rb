def talk
  count = 0
  until count == 3
    print "You say: "
    you_say = gets.strip
    if you_say == "BYE"
      count += 1
      puts "Grandma responds: 'HUH?! No not since #{rand(1930..1950)}!"
    elsif you_say == you_say.upcase && you_say != ""
      puts "Grandma responds: 'HUH?! No not since #{rand(1930..1950)}!"
      count = 0
    else 
      puts "Grandma responds: 'SPEAK UP GRAMMA CANT HEAR YOU!"
      count = 0
    end
  end
  "SHUT THE DOOR ON YOUR WAY OUT DEAR!"
end


puts "What do you want to say to grandma? "
puts talk