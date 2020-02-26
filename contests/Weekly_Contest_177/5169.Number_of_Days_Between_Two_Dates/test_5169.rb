require 'test/unit'
require './5169'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5169
    assert_equal 0, days_between_dates("2019-06-29", "2019-06-29")
    assert_equal 1, days_between_dates("2019-06-29", "2019-06-30")
    assert_equal 15, days_between_dates("2020-01-15", "2019-12-31")
    assert_equal 47377, days_between_dates("1971-03-24", "2100-12-09")
    assert_equal 33485, days_between_dates("1983-01-08", "2074-09-12")
  end
end
