require("minitest/autorun")
require_relative("../fish.rb")
require("minitest/rg")


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Tony")
    @fish2 = Fish.new("Zsolt")
    @Fish3 = Fish.new("John")
  end

  def test_fish_has_name
    assert_equal("Tony", @fish1.name())
  end
end
