require "./question"
require "./game"
require "./player"


if false #player tests
  puts "---- player tests ----"
  player1 = Player.new
  p player1
end

if false #question test
  puts "---- question tests ----"
  question1 = Question.new
  puts question1.answer
end

if false #game tests
  puts "---- game tests ----"
  new_game = Game.new

  puts "change_player should toggle the current_player: "
  p new_game.current_player.name
  new_game.change_player
  p new_game.current_player.name
  new_game.change_player
  p new_game.current_player.name

  puts "turn should ask current_player a question: "
  new_game.turn

end

puts "--- welcome to the Math Game! ---"

game = Game.new
i = 0 # to prevent inf loops during development

while game.player1.lives > 0 and game.player2.lives > 0 and i < 1000
  i += 1
  game.turn
end
