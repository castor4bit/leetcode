require 'test/unit'
require './234'
require '../../structures/listnode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_234
    head = ListNodeUtil.array_to_listnode([1, 2])
    assert_equal false, is_palindrome(head)

    head = ListNodeUtil.array_to_listnode([1, 2, 2, 1])
    assert_equal true, is_palindrome(head)

    head = ListNodeUtil.array_to_listnode([1, 2, 3, 2, 1])
    assert_equal true, is_palindrome(head)

    head = ListNodeUtil.array_to_listnode([])
    assert_equal true, is_palindrome(head)
  end
end
