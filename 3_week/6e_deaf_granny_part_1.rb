require './2_week/1c_prompt'

# This method communicates the idea behind comparing text to capitalized text.
def heard?(words)
  words.upcase == words
end

def gramma_speaks(say)
  if heard?(say) # reading this, we may not care about implementation, but if we do, then we can 
    # look at the implementation to know what it means to hear a statement
    "Grandma responds: NO, NOT SINCE #{rand(1930..1950)}"
  else
    "Grandma responds: HUH?! SPEAK UP, SONNY!"
  end
end

if __FILE__ == $0
  # because converse and gramma_speaks is really tightly coupled, one relies on the other
  # in a critical way... then you had to concern yourself about boolean returns.
  # why cant we update the file? Because it was already updated... no need to update an updated file
  until 'BYE' == your_answer = prompt("What do you want to say to Gramma? ").chomp
    puts gramma_speaks(your_answer)
  end

end
# any questions here? Is this code good to push? 
# well im not sure abotu the heard?(say) after the gramma_speaks(say) 
# i guess that makes sense
# why make another method?
# another reason for having the heard? method though is perhaps Grampa has the same problem.
# So we don't need to duplicate the code (the condition) we can use it anywhere it makes sense
# to have something heard or not. ahhh like if you wanted to build this out more?
# So right now she responds to silence as though she heard something.  It is a bug, but we can
# work on that at some other time.
# ahhh ok
