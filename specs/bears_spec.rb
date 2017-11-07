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

  def test_take_fish
    @amazon.add_fish(@nemo)
    @amazon.add_fish(@marlin)
    @yogi
    assert_equal(@yogi.length)
  end


end
