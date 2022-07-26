require "./question"
require "./game"
require "./player"

game = Game.new

puts "--- Welcome to the Math Game! ---"

while game.player1.alive and game.player2.alive
  game.turn
end

game.end