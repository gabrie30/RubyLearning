# Exercise3: Here are the program specifications for a simple game to be played against the computer:

# This game is played at the command-line.
# The game starts when the computer selects three consecutive cells in a 7 cell row (from 0 to 6). When that's complete, the game asks for your first guess.
# Guess the computer's selected cells in the smallest number of guesses. You are given a rating or level, based on how well you perform.
# At the command line, the user types in a number from 0 to 6. The computer checks if it's one of the selected cells. If it's a hit, increment the
# no_of_hits
# variable. In response to your guess, you'll see a result at the command-line: either "Hit", "Miss" or "End".
# When you have guessed all three cells, the game ends by printing out your rating (your number of guesses).
# Notes:

# Use only the features we have learned so far, in Ruby.
# You must design the
# Object::GameBoard
# class.
# The testgameboard.rb program uses your GameBoard class

class GameBoard

  def initialize
    @board = []
  end

  def set_locations_cells(locations)
    locations.each do |loc|
      @board << loc
    end
    @board
  end

  def check_yourself(user_guess)
    if @board.include?(user_guess)
      @board.delete(user_guess)
      @board.length == 0 ? (return "kill") : (return "hit")
    end
    "miss"
  end

  def rating(guesses)
    if guesses == 3
      return "LEET!"
    elsif guesses > 3 && guesses < 5
      return "Average Joe"
    elsif guesses >= 5
      return "Schmo"
    end
  end
end
