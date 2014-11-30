In the following Ruby code, x gets the value nil and pqr remains an undefined local variable. Why?

if false
 x = pqr
end
puts x
puts pqr


# x is initialized but assigned no value(nil).
# puts x returns nothing as x exists but with value nil.
# puts pqr returns undefined, because it has not been defined yet.