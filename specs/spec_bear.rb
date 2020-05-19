require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup 
    @bear = Bear.new("Yogi", :brown,)
  end

  def test_get_bear_name()
    assert_equal("Yogi", @bear.name()) 
  end
   
end