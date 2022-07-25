require "./question"
require "./game"
require "./player"


if false
  puts "---- player tests ----"
  player1 = Player.new
  p player1
end

if false
  puts "---- question tests ----"
  question1 = Question.new
  puts question1.answer
end

if true
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