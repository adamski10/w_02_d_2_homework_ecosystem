require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish.rb')
# require_relative('../river')
# require_relative('../bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new("Nemo")
  end

  def test_get_name()
    assert_equal("Nemo", @fish.name())
  end

  


end