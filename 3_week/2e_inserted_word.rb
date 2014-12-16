filename = ARGV[0]
file = File.open(filename, "r+")
lines = file.read
 
def replace_word(lines,target,replacement)
  lines.gsub(target,replacement)
end
 
File.write(filename, replace_word(lines, /word/, "inserted word" ))