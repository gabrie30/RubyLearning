What happens in the following Ruby code?

x = 10
y = 20
x, y = y, x
puts x
puts y



# a = [ 1, 2, 3 ]
# a[0], a[1] = a[1], a[0]
# print a 
# => [2, 1, 3]

# arr = [1,2,3]

# We could do this

# a,b,c = arr
# a #=> 1 
# b #=> 2
# c #=> 3

# and just not use b, but it's better to use a "placeholder":

# a,_,c = arr
# a #= 1
# c #= 3

# Suppose we want the next-to-last element of

# arr = [1,2,3,4,5,6,7,8]

# We could write

# _,_,_,_,_,_,a = arr
# a #=> 7