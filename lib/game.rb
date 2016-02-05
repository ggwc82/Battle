class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.was_attacked
  end



  attr_reader :player1, :player2, :players
end

# game.attack(player2)