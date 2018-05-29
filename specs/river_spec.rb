require("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")
require("minitest/rg")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name())
  end

  def test_count_fishes
    assert_equal(0, @river.count_fishes())
  end
end
