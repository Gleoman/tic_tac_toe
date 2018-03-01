require 'turn'
require 'pry'

describe Turn do
  let(:player) { double :player }
  let(:square) { double :square, tick: (square = player) }
  subject(:turn) { described_class.new(player) }

  describe '#initialization(player)' do
    it 'stores a player upon initialization' do
      expect(turn.player).to eq player
    end
  end

  describe '#tick(square)' do
    it 'ticks a square in the player\'s name' do
      expect(turn.tick(square)).to eq player
    end
  end
end
