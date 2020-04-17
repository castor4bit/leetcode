require 'test/unit'
require './557'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test557
    assert_equal "s'teL ekat edoCteeL tsetnoc", reverse_words("Let's take LeetCode contest")
  end
end
