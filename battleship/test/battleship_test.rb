gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BattleshipTest < Minitest::Test
  def assert_alive(boat)
    assert boat.alive?
  end

  def assert_dead(boat)
    refute boat.alive?, "expected #{boat.inspect} to be sunk"
  end  
end