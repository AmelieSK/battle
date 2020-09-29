class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attacker
    @players.first
  end

  def defender
    @players.last
  end

  def attack
    @players.last.receive_damage
    @players.rotate!
  end
end
