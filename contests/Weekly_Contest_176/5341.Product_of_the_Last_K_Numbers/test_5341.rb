require 'test/unit'
require './5341'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5341
    pon = ProductOfNumbers.new

    pon.add(3)
    pon.add(0)
    pon.add(2)
    pon.add(5)
    pon.add(4)
    assert_equal 20, pon.get_product(2)
    assert_equal 40, pon.get_product(3)
    assert_equal 0, pon.get_product(4)

    pon.add(8)
    assert_equal 32, pon.get_product(2)
  end

  def test5341_2
    pon = ProductOfNumbers.new

    30000.times { pon.add(1) }
    1000.times do
      assert_equal 1, pon.get_product(30000)
    end
  end
end
