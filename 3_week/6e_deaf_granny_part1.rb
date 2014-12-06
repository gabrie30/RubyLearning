def converse
  puts "What do you want to say to Gramma? "
  say = "no"
  until say == "BYE"
     print "You say: "
     say = gets.chomp
     puts gramma_speaks(say)
   end
end
 
def gramma_speaks(say)
  case say
  when "BYE"
    "SHUT THE DOOR ON YOUR WAY OUT SONNY!"
  when say.upcase
    "Grandma responds: NO, NOT SINCE #{rand(1930..1950)}"
  else
    "Grandma responds: HUH?! SPEAK UP, SONNY!"
  end
end
 
converse