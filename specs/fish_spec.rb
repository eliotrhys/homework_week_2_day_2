require("minitest/autorun")
require("minitest/rg")
require_relative("../bears.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @nemo = Fish.new("Nemo")
    @marlin = Fish.new("Marlin")
    @dory = Fish.new("Dory")
  end

end
