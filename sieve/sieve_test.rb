require 'minitest/autorun'
require 'minitest/pride'
require_relative 'sieve'

class SieveTest < MiniTest::Unit::TestCase
  def test_it_exists
    assert Sieve
  end
end
