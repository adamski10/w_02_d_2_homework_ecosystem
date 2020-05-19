require('minitest/autorun')
require('minitest/reporters')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < Minitest::Test
  def setup
    @river = River.new("Nile")
  end

  def test_get_river_name()
    assert_equal("Nile", @river.name())
  end

  def test_river_can_supply_fish()
    @river.remove_fish(10)
    assert_equal(90, @river.fish_stock())
  end

end