require_relative 'gameboard'
no_of_guesses = 0
gb = GameBoard.new
random_no = rand(5)
locations = [random_no, random_no+1, random_no+2] 
gb.set_locations_cells(locations)
is_alive = true
 
while is_alive
  puts 'Enter a number: '
  STDOUT.flush
  user_guess = gets.chomp.to_i
  result = gb.check_yourself(user_guess)
  puts result
  no_of_guesses += 1
  if (result == 'kill')
    is_alive = false
    puts "*********RANKING**********" #this would be cool to write to a file, then have a leaderboard
    puts "You took #{no_of_guesses} guesses, your status is: #{gb.rating(no_of_guesses)}"
  end
end