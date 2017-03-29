require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:player_1) {double :player }
  let(:player_2) {double :player }


  describe '#attack' do
    it 'damages the player' do
      expect(player_1).to receive(:reduce_score)
      game.attack(player_1)
    end
  end

end
