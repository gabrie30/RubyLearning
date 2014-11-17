#Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. This method should return the temperature in degrees Celsius.

#To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows:

def temp_change(f)
	c = (((f - 32.0) * 5) / 9)
	c.round(2)
end

p temp_change(100)

# .round() returns an int
# sprintf() returns a string

def temp_change2(f)
	c = (((f - 32.0) * 5) / 9)
	"%.2f" % c
end

p temp_change2(100)
