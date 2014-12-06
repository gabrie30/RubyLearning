file = File.open(ARGV[0], "r")
lines = file.readlines

total_characters_excluding_whitespace = lines.join.gsub(" ", "").delete("\n").split("").length
total_characters_including_whitespace = lines.join.delete("\n").split("").length
total_words = lines.join.split(" ").length
total_sentences = lines.join.split(/\.|\?|\!/).length
total_paragraphs = lines.join.split(/\n\n/).length

puts "Statistics for the file: " 
puts "There are #{lines.length} lines"
puts "There are #{total_characters_excluding_whitespace} characters, excluding whitespace and newlines"
puts "There are #{total_characters_including_whitespace} characters, including whitespace, but excluding newlines"
puts "There are #{total_words} total words"
puts "There are #{total_sentences} total sentences"
puts "There are #{total_paragraphs} total paragraphs"
puts "There are on average #{total_words / total_sentences} words per sentence"
puts "There are on average #{total_sentences / total_paragraphs} sentences per paragraph"
