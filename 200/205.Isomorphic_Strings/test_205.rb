require 'test/unit'
require './205'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_205
    assert_equal true, is_isomorphic("egg", "add")
    assert_equal false, is_isomorphic("foo", "bar")
    assert_equal true, is_isomorphic("paper", "title")
    assert_equal false, is_isomorphic("bar", "foo")
    assert_equal true, is_isomorphic("agg", "add")
  end
end
