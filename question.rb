class Question
  
  def initialize # pick two numbers between 1 and 20. Record their sum.
    @n = rand(20) + 1
    @m = rand(20) + 1
    @answer = @n + @m
  end

  def ask(player) # solicit input and penalize incorrect answers
    print "#{player.name}: What is the sum of #{@n} and #{@m}? \n > "
    guess = $stdin.gets.chomp
    if guess.to_i == @answer
      puts "well done #{player.name}, that is correct!"
    else
      puts "Seriously, #{player.name}?! That ain't even close."
      player.lose_life
    end
  end



end