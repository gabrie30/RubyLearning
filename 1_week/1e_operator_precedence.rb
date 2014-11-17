#At first I thought that line 4 would return true; because thats what I thought or did. However looking at the examples below it I took a wild guess at line 4 being false because I thought maybe the variable x gets set directly to y, and or z was ignored.

#The first time around I thought line 6 would return true because I thought ( false = false ) would be true, and then true or true == true. However what I think is actually happening is that x is being assigned the value of false, ( x = false ) exactly like the first example.

#Line 8 I thought would evaluate to true because x is set to either (false or true) this is how I originally thought that or worked.

#After being baffled the first time around I looked up the difference between "or" and ||. The difference is the precedence, what do you know. The = sign has precedence over "or" however the || has precedence over the = sign. So on line 3 x is assigned to y first because = has precedence over "or". Line 5 the parens make this more clear, so lines 3 and 5 are identical. Line 7 is how the || works because || has precedence over =
