# The format for "%05d" % 123 is :
# % [flags] [width] [.precision] type

# "%05d" % 123

# you use the second % as a shortcut to sprintf "%05d" ,123 in other words (sprintf "%05d" ,123 == "%05d" % 123)

# "%05d" % 123
# 0 = this will fill in any empty space if our original number is not sufficiently large. You can also substitute 0 for a blank space " "
# 5 = this is the smallest you want the formatted number to be
# d = in decimal format, you can also choose b for binary
# ,num = the number you want formatted

# From what I've read this would be useful for normalizing zip codes, or changing IP address to binary
