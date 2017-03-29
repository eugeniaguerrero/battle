class Player

  attr_reader :name, :score

  INITIAL_SCORE = 100
  ATTACK_SCORE = 10

  def initialize(name)
    @name = name
    @score = INITIAL_SCORE
  end

  def reduce_score
    self.score -= ATTACK_SCORE
  end

  def attack(opponent)
    opponent.reduce_score
  end

  attr_writer :score

end
