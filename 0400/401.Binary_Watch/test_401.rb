require 'test/unit'
require './401'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test401
    expected = ["1:00", "2:00", "4:00", "8:00", "0:01", "0:02", "0:04", "0:08", "0:16", "0:32"].sort
    assert_equal expected, read_binary_watch(1).sort

    expected = ["7:31", "7:47", "7:55", "7:59", "11:31", "11:47", "11:55", "11:59"].sort
    assert_equal expected, read_binary_watch(8).sort
  end
end
