require 'player'

describe Player do
  subject(:deanna) { Player.new('Deanna') }

  describe '#name' do
    it 'returns the name' do
      expect(deanna.name).to eq 'Deanna'
    end
  end
end
