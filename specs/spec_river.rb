require('minitest/autorun')
require('minitest/reporters')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < Minitest::Test
  def setup
    @river = River.new("Nile")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Bubbles")
    @fish_3 = Fish.new("Jack")
    @fish_array = [@fish_1, @fish_2, @fish_3]
  end

  def test_get_river_name()
    assert_equal("Nile", @river.name())
  end

  def test_check_river_fish_stock()
    @river.fill_river_with_fish(@fish_array)
    assert_equal(3, @river.fish_stock().count())          
  end

  def test_river_can_supply_fish()
    @river.fill_river_with_fish(@fish_array)
    @river.remove_fish(@fish_1)
    assert_equal(2, @river.fish_stock().count())
  end

end