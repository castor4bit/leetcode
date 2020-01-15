require 'test/unit'
require './434'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test434
    assert_equal 5, count_segments("Hello, my name is John")
    assert_equal 5, count_segments("Hello,\nmy name is    John\n")
  end
end
