# Run the following two programs and try and understand the difference in the outputs 
# of the two programs. The program:

# def mtdarry
#   10.times do |num|
#     puts num
#   end
# end
 
# mtdarry
and
# def mtdarry
#   10.times do |num|
#     puts num
#   end
# end
 
# puts mtdarry


>> Fixnum#times
= Fixnum#times

(from ruby site)
=== Implementation from Integer
---------------------------------
int.times {|i| block } -> self
int.times -> an_enumerator

Because we give it a block it will return self. This means the int that is being
acted on at the left hand side of the dot opperator.ß