class Ship
  attr_reader :segments

  OK = true
  HIT = false

  def initialize(size)
    @segments = Array.new(size){ OK }
  end

  def alive?
    segments.any?
  end

  def hit(position)
    segments[position] = HIT
  end
end