class Analyzer

  def initialize(file)
    @file = file
    @readlines = file.readlines
    @lines = @readlines.length
    @total_characters_excluding_whitespace = @readlines.join.gsub(" ", "").delete("\n").split("").length
    @total_characters_including_whitespace = @readlines.join.delete("\n").split("").length
    @total_words = @readlines.join.split(" ").length
    @total_sentences = @readlines.join.split(/\.|\?|\!/).length
    @total_paragraphs = @readlines.join.split(/\n\n/).length
    @counter_hash = {"a"=>0, "b"=>0, "c"=>0, "d"=>0, "e"=>0, "f"=>0, "g"=>0, "h"=>0, "i"=>0, "j"=>0, "k"=>0, "l"=>0, "m"=>0, "n"=>0, "o"=>0, "p"=>0, "q"=>0, "r"=>0, "s"=>0, "t"=>0, "u"=>0, "v"=>0, "w"=>0, "x"=>0, "y"=>0, "z"=>0}
  end

  def letter_count() 
    letters_array = @readlines.join(" ").gsub(/\W*/,"").split("")
    counter = {}
    i = 0
    one_more = 0
      while i < letters_array.length
        letters_array[i] = letters_array[i].downcase
        @counter_hash[letters_array[i]] = @counter_hash[letters_array[i]] + 1
        i += 1
      end
  end

  def reporting()
    puts "Statistics for the file: " 
    puts "There are #{@lines} lines"
    puts "There are #{@total_characters_excluding_whitespace} characters, excluding whitespace and newlines"
    puts "There are #{@total_characters_including_whitespace} characters, including whitespace, but excluding newlines"
    puts "There are #{@total_words} total words"
    puts "There are #{@total_sentences} total sentences"
    puts "There are #{@total_paragraphs} total paragraphs"
    puts "There are on average #{(@total_words.to_f / @total_sentences.to_f).round(2)} words per sentence"
    puts "There are on average #{(@total_sentences.to_f / @total_paragraphs.to_f).to_f.round(2)} sentences per paragraph"
    puts "The letter distribution of letters for this document"
    puts 
    @counter_hash.each do |letter,number|
      print "#{letter}: "
      number.times{print "*"}
      puts 
    end
  end
end

file = File.open(ARGV[0], "r")
analyse1 = Analyzer.new(file)

analyse1.letter_count
analyse1.reporting

