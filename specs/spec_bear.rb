require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup 
    @bear = Bear.new("Yogi", :brown,)
    @river = River.new("Nile")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Bubbles")
    @fish_3 = Fish.new("Jack")
    @fish_array = [@fish_1, @fish_2, @fish_3]
  end

  def test_get_bear_name()
    assert_equal("Yogi", @bear.name()) 
  end

  def test_bear_stomach_status()
    assert_equal(0, @bear.stomach().count())
  end

  def test_bear_can_eat()
    @river.fill_river_with_fish(@fish_array)
    @bear.add_fish_to_stomach(@fish_1)
    @river.remove_fish(@fish_1)
    assert_equal(1, @bear.stomach().count())
    assert_equal(2, @river.fish_stock().count())
  end
   
end