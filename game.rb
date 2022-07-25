require "./player"
require "./question"


# contain the game loop
class Game
  attr_accessor :current_player, :player1, :player2
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def change_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def turn
    puts "--- New Turn ---"
    question = Question.new
    guess = question.ask(@current_player)


    self.change_player
  end
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
