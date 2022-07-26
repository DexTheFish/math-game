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

  def print_score
    puts "   P1: #{player1.lives}/3 ------------  P2: #{player2.lives}/3 \n"
  end

  def turn # process question, print score, change player
    puts "------------ New Turn ------------"
    question = Question.new
    question.ask(@current_player)
    print_score
    change_player
  end

  def end # declare winner and final score
    if player1.alive
      puts "Player 1 is victorious with a score of #{player1.lives}/3"
    else
      puts "Player 2 is victorious with a score of #{player2.lives}/3"
    end
    puts "----------- GAME OVER -----------\n            Good Bye!"
  end
end

