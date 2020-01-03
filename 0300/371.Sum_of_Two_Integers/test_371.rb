require 'test/unit'
require './371'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_371
    assert_equal 3, get_sum(1, 2)
    assert_equal 4, get_sum(1, 3)
    assert_equal 2147483647, get_sum(1073741824, 1073741823)

    assert_equal 1, get_sum(-2, 3)
    assert_equal -20, get_sum(-12, -8)
    assert_equal -1, get_sum(-1073741823, 1073741822)
  end

  def test_half_adder
    assert_equal [0, 0], half_adder(0, 0)
    assert_equal [0, 1], half_adder(0, 1)
    assert_equal [0, 1], half_adder(1, 0)
    assert_equal [1, 0], half_adder(1, 1)
  end

  def test_full_adder
    assert_equal [0, 0], full_adder(0, 0, 0)
    assert_equal [0, 1], full_adder(0, 1, 0)
    assert_equal [0, 1], full_adder(1, 0, 0)
    assert_equal [1, 0], full_adder(1, 1, 0)

    assert_equal [0, 1], full_adder(0, 0, 1)
    assert_equal [1, 0], full_adder(0, 1, 1)
    assert_equal [1, 0], full_adder(1, 0, 1)
    assert_equal [1, 1], full_adder(1, 1, 1)
  end
end
