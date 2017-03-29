require_relative 'player'
class Game

  def attack(player)
    player.reduce_score
  end

end
