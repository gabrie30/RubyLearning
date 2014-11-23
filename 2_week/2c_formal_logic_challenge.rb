# Question:
# Over the past few years I've noticed that lots of programmers seem to have pretty big deficits when it comes to formal logic. Personally I think that's a shame, so I decided to post a little challenge:
# Ruby has a ternary operator (`?:`), which is basically a short version of `if...else`:
# puts 5 > 3 ? "yeah" : "boo" #=> nil
# yeah
# puts 5 < 3 ? "yeah" : "boo" #=> nil
# boo

# Now imagine that operator wouldn't exist, how could you easily replace it by using logic operators and exploiting short-circuiting and precedence?


# Answer:
# The output is represented with =>, puts was added if you want to copy/past/run

# 5 > 3 && "yeah" or "boo"
# => yeah

# 5 < 3 || "yeah" && "boo"
# => boo

# Here is a breakdown for solving these

# puts "yeah" && "boo" => boo
# puts "yeah" and "boo" => yeah
# puts "yeah" && false => false
# puts "yeah" and false => yeah *this is a surprising case
# puts ("yeah" and false) => false *Must be precedence, but what is it taking precedence over?
# puts false && "boo" => false
# puts false and "boo" => false
# puts false && false => false
# puts false and false => false

# puts "yeah" || "boo" => yeah
# puts "yeah" or "boo" => yeah
# puts "yeah" || false => yeah
# puts "yeah" or false => yeah
# puts false || "boo" => boo
# puts false or "boo" => false *this is a surprising case
# puts (false or "boo") => boo *Must be precedence, but what is it taking precedence over?
# puts false || false => false
# puts false or false => false

# Heres a challenge if anyone wants more practice. I got the last few from googling.

# false || "boo" && "this" or "that" and false

# 1 == 1 && 2 == 1
# "test" == "test"
# 1 == 1 || 2 != 1
# true && 1 == 1
# false && 0 != 0
# true || 1 == 1
# "test" == "testing"
# 1 != 0 && 2 == 1
# "test" != "testing"
# "test" == 1
# !(true && false)
# !(1 == 1 && 0 != 1)
# !(10 == 1 || 1000 == 1000)
# !(1 != 10 || 3 == 4)
# !("testing" == "testing" && "Zed" == "Cool Guy")
# 1 == 1 && (!("testing" == 1 || 1 == 0))
# "chunky" == "bacon" && (!(3 == 4 || 3 == 3))
# 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))
