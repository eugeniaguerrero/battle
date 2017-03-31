require_relative 'player'
class Game

attr_reader :players, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def assign(p1, p2)
    self.players = [p1, p2]
    self.current_player = p1
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def attack(player)
    player.reduce_score
  end

  def switch_turns
    self.current_player = opponent
  end

  def opponent
    opponent_of(current_player)
  end

private

  def opponent_of(player)
    player == players.first ? players.last : players.first
  end

  attr_writer :current_player, :players

end
