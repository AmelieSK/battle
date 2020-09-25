require '../lib/player.rb'

describe Player do
  subject(:amy) {Player.new('Amy')}
  subject(:anastasis) {Player.new('Anastasis')}

  describe 'a name' do
    it 'returns the name' do
      expect(amy.name).to eq 'Amy'
    end
  end
   
  describe 'hit points' do
    it 'returns the hit points' do
      expect(amy.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe 'attack' do
    it 'damages the player' do
      expect(anastasis).to receive(:receive_damage)
      amy.attack(anastasis)
    end
  end

  describe 'receive_damage' do
    it 'reduces the player hit points' do
      expect { amy.receive_damage }.to change { amy.hit_points }.by(-10)
    end
  end
end
