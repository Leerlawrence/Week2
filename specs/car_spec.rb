require ('minitest/autorun')
require('minitest/rg')
require_relative('../engine')
require_relative('../car')

class CarTest < MiniTest::Test
  def setup
    normal_engine = Engine.new(10, 5)
    turbo_engine = Engine.new(25, 10)
    @normal_car = Car.new(normal_engine)
    @turbo_car = Car.new(turbo_engine)
  end

  def test_car_acceleration
    @normal_car.accelerate
    assert_equal(10, @normal_car.speed)
    assert_equal(95, @normal_car.fuel_level)
    @turbo_car.accelerate
    assert_equal(25, @turbo_car.speed)
    assert_equal(90, @turbo_car.fuel_level)
  end

  def test_car_braking
    @normal_car.accelerate
    assert_equal(10, @normal_car.speed)
    @normal_car.brake
    assert_equal(0, @normal_car.speed)
    @normal_car.brake
    assert_equal(0, @normal_car.speed)
    assert_equal(95, @normal_car.fuel_level)
  end

  def test_fuel_use
    # tests the acceleration code
for i in 0..5
   @turbo_car.accelerate
end
    assert_equal(150, @turbo_car.speed)
    assert_equal(40, @turbo_car.fuel_level)
    @turbo_car.accelerate
    assert_equal(175, @turbo_car.speed)
    assert_equal(30, @turbo_car.fuel_level)
    
  end
end