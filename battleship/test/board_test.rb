require './test/battleship_test'
require './lib/board'

class BoardTest < BattleshipTest
  attr_reader :board

  def setup
    @board = Board.new
  end

  class FakeShip
    def hit(position)
      @alive = false
    end

    def alive?
      @alive
    end
  end

  def test_it_places_elements
    ship = FakeShip.new
    board.place(ship, ["A", "2"], ["A", "3"])
    content, position = board.fetch(["A", "2"])
    assert_equal ship, content
  end

  def test_it_finds_horizontal_ranges_of_two_cells
    targets = board.cells_from(["A", "1"], ["B", "1"])
    assert_equal [[0, 0], [1, 0]], targets
  end

  def test_it_finds_horizontal_ranges_of_three_cells
    targets = board.cells_from(["A", "1"], ["C", "1"])
    assert_equal [[0, 0], [1, 0], [2, 0]], targets
  end

  def test_it_finds_vertical_ranges_of_three_cells
    targets = board.cells_from(["A", "1"], ["A", "3"])
    assert_equal [[0, 0], [0, 1], [0, 2]], targets
  end

  def test_it_fires_at_positions
    fake = FakeShip.new
    board.place(fake, ["B", "3"], ["B", "3"])
    board.fire_at(["B", "3"])
    assert_dead fake
  end
end