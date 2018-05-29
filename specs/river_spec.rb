require("minitest/autorun")
require_relative("../river.rb")
require_relative("../fish.rb")
require("minitest/rg")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")

    @fish1 = Fish.new("Tony")
    @fish2 = Fish.new("Zsolt")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name())
  end

  def test_count_fishes
    assert_equal(0, @river.count_fishes())
  end

  def test_add_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.count_fishes())
  end

  def test_remove_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.remove_fish(@fish2)
    assert_equal(1, @river.count_fishes())
  end
end
