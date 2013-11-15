gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test
  attr_reader :board

  def setup
    @board = Board.new
  end

  def test_it_places_elements
    board.place("hi", ["A", "2"])
    content = board.fetch(["A", "2"])
    assert_equal "hi", content
  end
end