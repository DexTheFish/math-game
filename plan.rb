# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.
# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.


# ---classes---

# store player info like name, remaining lives.
class Player #(name?)
  def initialize
    @lives = 3
  end
end

# contain the game loop
class Game
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = 'Player 1' # manage whose turn it is
  end


# main loop: runs until either player reaches 0 lives
=begin
    - display 'new turn' message
    - generate a question
    - display it to current_player
    - ask for user-input
    - Correct:
      - display 'correct' message
    - Incorrect:
      - display 'incorrect' message
      - deduct a life from 'current player'
    - toggle current_player
    - display current lives remaining*
    - check for lives = 0
=end

end

# A new math question is generated for each turn by picking two numbers between 1 and 20.
class Question
  # initialize with some numbers and an answer
  # method to ask a question -> puts "what is x + y?"
end

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