require 'grid'
require 'pry'

describe Grid do
  subject(:grid) { described_class.new(4) }

  describe '#initialization(n)' do
    it 'can be initialized with n number of rows' do
      expect(grid.rows.count).to eq 4
    end

    it 'by default is initialized with 3 rows' do
      grid = Grid.new
      expect(grid.rows.count).to eq 3
    end

    it 'cannot be initialized with less than 3 rows' do
      expect{ Grid.new(1) }.to raise_error(ArgumentError, "Minimum size of grid is 3")
    end

    it 'all rows are arrays' do
      expect(grid.rows.each).to all(be_instance_of Array)
    end

    it 'each array for each row contains n number of empty hashes' do
      expect(grid.rows[0].each).to all(be_instance_of Hash)
    end
  end
end
