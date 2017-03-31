require 'game'

describe Game do

  subject(:game) {described_class.new(alfred, pesto)}
  let(:alfred) {double :player }
  let(:pesto) {double :player }

  describe "#initialize" do
    it 'initiates a new game with player 1' do
      expect(game.player_1).to eq alfred
    end
    it 'initiates a new game with player 2' do
      expect(game.player_2).to eq pesto
    end
    it 'initiates a current player (player 1)' do
      expect(game.current_player).to eq(alfred)
    end
  end

  describe '#opponent' do
    it 'returns opponent of alfred' do
      expect(game.opponent).to eq(pesto)
    end
  end

  describe '#switch_turns' do
    it 'switches the players' do
      game.switch_turns
      expect(game.current_player).to eq(pesto)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(alfred).to receive(:reduce_score)
      game.attack(alfred)
    end
  end

end
