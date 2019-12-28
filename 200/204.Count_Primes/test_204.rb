require 'test/unit'
require './204'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_204
    assert_equal 0, count_primes(0)
    assert_equal 0, count_primes(1)
    assert_equal 0, count_primes(2)
    assert_equal 1, count_primes(3)
    assert_equal 2, count_primes(4)
    assert_equal 4, count_primes(10)
    assert_equal 4, count_primes(10)
    assert_equal 1229, count_primes(10000)
    assert_equal 9592, count_primes(100000)
    assert_equal 41537, count_primes(499979)
  end
end
