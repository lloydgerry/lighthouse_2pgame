
require './player.rb'
require './question.rb'



$player1 = Player.new("Player1")
$player2 = Player.new("Player2")


def game
 
  @counter = 0
  
  @current_player = $player1

  def createQ
    @current_question = Question.new("question#{$counter}")
  end

  def setPlayer
    if (@current_player == $player1)
      @current_player = $player2
    else 
      @current_player = $player1
    end
  end

  while ($player1.health > 0 && $player2.health > 0 ) do
    if (@counter > 0) 
      puts "---- New Turn ----"
    end
    @counter += 1
    createQ
    puts "#{@current_player.name} your turn -->"
    puts @current_question.output
    answer = gets.chomp
    answer = answer.to_i
    if answer == @current_question.correctAnswer
      puts "Correct!"
      puts "Player1 health: #{$player1.health}/3. Player2 health #{$player2.health}/3."
    else
      puts "Sorry that wasn't correct"
      @current_player.decrease  
      puts "Player1 health: #{$player1.health}/3. Player2 health #{$player2.health}/3."
    end
    if ($player1.health == 0)
      puts "Player 2 wins!"
    elsif ($player2.health == 0 )
      puts "Player 1 wins!"
    end
    setPlayer
  end
end

game
