class Analyzer

  def initialize(file)
    @lines = file.readlines
    @total_lines = @lines.length
    @total_characters_excluding_whitespace = @lines.join.gsub(" ", "").delete("\n").split("").length
    @total_characters_including_whitespace = @lines.join.delete("\n").split("").length
    @total_words = @lines.join.split(" ").length
    @total_sentences = @lines.join.split(/\.|\?|\!/).length
    @total_paragraphs = @lines.join.split(/\n\n/).length
    @counter_hash = Hash.new(0)
  end

  def letter_count()#TODO: find work around... not sure I like this more than creating my own hash - the letter j does not appear in the text.txt so it is not visualized in the report
      letters_array = @lines.join(" ").gsub(/\W*/,"").split("")
      letters_array.each do |letter|
        @counter_hash[letter.downcase] += 1 
      end
      @counter_hash
  end


  def report() #Heredoc is breaking the indentation rule, not sure if this is ok.
  puts <<-EOF
  Statistics for the file: 
=====================================
  There are #{@total_lines} lines
  There are #{@total_characters_excluding_whitespace} characters, excluding whitespace and newlines
  There are #{@total_characters_including_whitespace} characters, including whitespace, but excluding newlines
  There are #{@total_words} total words
  There are #{@total_sentences} total sentences
  There are #{@total_paragraphs} total paragraphs
  There are on average #{(@total_words.to_f / @total_sentences.to_f).round(2)} words per sentence
  There are on average #{(@total_sentences.to_f / @total_paragraphs.to_f).to_f.round(2)} sentences per paragraph

The distribution of letters for this document. (* = 10)
  EOF
    @counter_hash.sort.each do |letter,number|
      print "#{letter}: "
      (number/10).times{print "*"}
      puts 
    end
  end
end

file = File.open("text.txt", "r")
analyse1 = Analyzer.new(file)

analyse1.letter_count
analyse1.report

