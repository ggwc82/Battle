class Game
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack(player)
    player.was_attacked
  end

  attr_reader :players
end

# game.attack(player2)