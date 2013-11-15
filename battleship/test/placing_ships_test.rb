require './test/battleship_test'
require './lib/ship'
require './lib/board'

class PlacingShipsTest < BattleshipTest
  def test_it_sinks_a_one_segment_ship
    ship = Ship.new(1)
    board = Board.new
    board.place(ship, ["A", "1"], ["A", "1"])
    assert_alive ship
    board.fire_at(["A", "1"])
    assert_dead ship
  end

  def test_it_sinks_a_two_segment_ship
    ship = Ship.new(2)
    board = Board.new
    board.place(ship, ["A", "1"], ["B", "1"])
    assert_alive ship
    board.fire_at(["A", "1"])
    assert_alive ship
    board.fire_at(["B", "1"])
    assert_dead ship
  end

  def test_it_sinks_a_two_segment_ship
    ship = Ship.new(3)
    board = Board.new
    board.place(ship, ["B", "2"], ["D", "2"])
    assert_alive ship
    board.fire_at(["D", "2"])
    assert_alive ship
    board.fire_at(["C", "2"])
    assert_alive ship
    board.fire_at(["B", "2"])
    assert_dead ship
  end  
end
