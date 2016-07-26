require ('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class EngineTest < MiniTest::Test

  def test_engines
    # sets the engines and tests the acceleration and fuel values 
    normal_engine = Engine.new(10, 5)
    turbo = Engine.new(25, 10)
    assert_equal(10, normal_engine.acceleration)
    assert_equal(25, turbo.acceleration)
    assert_equal(5, normal_engine.fuel_economy)
    assert_equal(10, turbo.fuel_economy)
  end
end