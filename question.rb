# A new math question is generated for each turn by picking two numbers between 1 and 20.
class Question
  attr_reader :answer
  
  def initialize
    # pick two numbers between 1 and 20. Record their sum.
    @n = rand(20) + 1
    @m = rand(20) + 1
    @answer = @n + @m
  end

  def ask(player)
    print "#{player.name}: What is the sum of #{@n} and #{@m}? \n > "
    guess = gets.chomp
    if guess.to_i == @answer
      puts "well done #{player.name}, that is correct!"
    else
      puts "Seriously, #{player.name}?! That ain't even close."
      player.lose_life
    end
  end



end