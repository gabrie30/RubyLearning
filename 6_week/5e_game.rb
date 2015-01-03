def save_game(file)
  score = 1000
  open(file, "w") do |f|
  f.puts(score)
  f.puts(Time.new.to_i)
  end
end

save_game("game.sav")
sleep(2)
load_game("game.sav") # => "Your saved score is 1000."

open("game.sav", "r+b") { |f| f.write("9") }
load_game("game.sav") # RuntimeError: I suspect you of cheating.
