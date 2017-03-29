require 'game'

describe Game do

  subject(:game) {described_class.new('Alfred', 'Pesto')}
  let(:alfred) {double :player }
  let(:pesto) {double :player }

  describe '#player_1_name' do
    it 'tells us the name of player_1' do
      expect(pesto.name).to eq 'Pesto'
    end
  end

  describe '#player_1_score' do
    it 'tells us the score or player_1' do
    expect(pesto.score).to eq 100
    end
  end


  describe '#attack' do
    it 'damages the player' do
      expect(player_1).to receive(:reduce_score)
      game.player_1_attacks
    end
  end

end
