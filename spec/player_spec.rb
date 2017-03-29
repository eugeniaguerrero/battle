require 'player'

describe Player do

subject(:pesto) {described_class.new('Pesto')}
subject(:alfred) {described_class.new('Alfred')}

  it 'returns a player name' do
    expect(pesto.name).to eq 'Pesto'
  end

  it 'returns a score' do
    expect(pesto.score).to eq described_class::INITIAL_SCORE
  end

  it 'damages the player' do
    expect(pesto).to receive(:reduce_score)
    alfred.attack(pesto)
  end

  it 'reduces a score' do
    expect {pesto.reduce_score}.to change{pesto.score}.by(-described_class::ATTACK_SCORE)
  end

end
