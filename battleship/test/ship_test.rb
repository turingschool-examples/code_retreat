require './test/battleship_test'
require './lib/ship'

class ShipTest < BattleshipTest
  attr_reader :ship

  def setup
    @ship = Ship.new(1)
  end

  def test_it_is_alive
    assert_alive ship
  end

  def test_it_dies
    ship.hit(0)
    assert_dead ship
  end

  def test_it_takes_size_hits_to_die
    carrier = Ship.new(5)
    (0..3).each do |i|
      carrier.hit(i)
      assert_alive carrier
    end
    carrier.hit(4)
    assert_dead carrier
  end
end
