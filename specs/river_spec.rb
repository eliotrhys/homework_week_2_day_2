require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup
    @amazon = River.new("Amazon")
    @nemo = Fish.new("Nemo")
    @marlin = Fish.new("Marlin")
    @dory = Fish.new("Dory")
  end

  def test_fish_count
    assert_equal(@amazon.fish_count, 0)
  end

  def test_add_fish
    @amazon.add_fish(@nemo)
    assert_equal(@amazon.fish_count, 1)
  end

  def test_add_fish_2
    @amazon.add_fish(@nemo)
    @amazon.add_fish(@marlin)
    assert_equal(@amazon.fish_count, 2)
  end

end
