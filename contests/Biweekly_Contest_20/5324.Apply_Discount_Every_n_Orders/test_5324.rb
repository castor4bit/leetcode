require 'test/unit'
require './5324'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5324
    cashier = Cashier.new(3, 50, [1, 2, 3, 4, 5, 6, 7], [100, 200, 300, 400, 300, 200, 100])

    assert_equal 500.0, cashier.get_bill([1, 2], [1, 2])
    assert_equal 4000.0, cashier.get_bill([3, 7], [10, 10])
    assert_equal 800.0, cashier.get_bill([1, 2, 3, 4, 5, 6, 7], [1, 1, 1, 1, 1, 1, 1])
    assert_equal 4000.0, cashier.get_bill([4], [10])
    assert_equal 4000.0, cashier.get_bill([7, 3], [10, 10])
    assert_equal 7350.0, cashier.get_bill([7, 5, 3, 1, 6, 4, 2], [10, 10, 10, 9, 9, 9, 7])
    assert_equal 2500.0, cashier.get_bill([2, 3, 5], [5, 3, 2])
  end
end
