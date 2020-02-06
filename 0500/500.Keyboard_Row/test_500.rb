require 'test/unit'
require './500'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test500
    assert_equal ["Alaska", "Dad"], find_words(["Hello", "Alaska", "Dad", "Peace"])
  end
end
