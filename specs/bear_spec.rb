require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")
require("minitest/rg")


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Tony")
    @fish2 = Fish.new("Zsolt")
    @Fish3 = Fish.new("John")


    @river = River.new("Amazon")

    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)

  end

  def test_stomach_count
    assert_equal(0, @bear.stomach_count())
  end

  def test_bear_eats
    @bear.bear_eats(@river)
    assert_equal(3, @bear.stomach_count())
    assert_equal(0, @river.count_fishes())
  end

  def test_bear_roar
    assert_equal("Roooooar!", @bear.bear_roar("Roooooar"))
  end
end
