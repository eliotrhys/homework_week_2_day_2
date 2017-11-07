require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBears < MiniTest::Test

  def setup
    @yogi = Bears.new("Yogi")
    @amazon = River.new("Amazon")
    @nemo = Fish.new("Nemo")
    @marlin = Fish.new("Marlin")
    @dory = Fish.new("Dory")
  end

  def test_food_count
    assert_equal(@yogi.food_count, 0)
  end

  def test_roar
    value = @yogi.roar("ROAR!")
    assert_equal(value, "ROAR!")
  end

  def test_take_fish
    @amazon.add_fish(@nemo)
    @amazon.add_fish(@marlin)
    take_fish(@nemo)
    @amazon.remove_fish
    assert_equal(@yogi.food_count, 1)
    assert_equal(@amazon.fish_count, 1)
  end


end
