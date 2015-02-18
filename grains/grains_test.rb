require 'minitest/autorun'
require 'minitest/pride'
require_relative 'grains'

class GrainsTest < MiniTest::Unit::TestCase
  def test_it_exists
    assert Grains
  end
end
