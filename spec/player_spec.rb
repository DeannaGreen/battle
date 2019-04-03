require 'player'

describe Player do
  subject(:deanna) { Player.new('Deanna') }
  subject(:madison) { Player.new('Madison') }

  describe '#name' do
    it 'returns the name' do
      expect(deanna.name).to eq 'Deanna'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(deanna.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { deanna.receive_damage }.to change { deanna.hit_points }.by(-10)
    end
  end
 end
