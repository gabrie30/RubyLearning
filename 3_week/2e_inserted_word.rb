filename = ARGV[0]
 
file = File.open(filename, "r+")
lines = file.read
 
string = lines.gsub("word","inserted word")
File.write(filename, string)