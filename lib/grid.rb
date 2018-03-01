
class Grid

  attr_reader :rows

  def initialize(size = 3)
    @rows = []
    create(size)
  end

  private

  def create(size)
    raise ArgumentError.new("Minimum size of grid is 3") if size < 3
    size.times do
     @rows << Array.new(size, Hash.new)
    end
  end
end
