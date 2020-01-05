require 'test/unit'
require './5305'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5305
    watched_videos = [["A","B"],["C"],["B","C"],["D"]]
    friends = [[1, 2], [0, 3], [0, 3], [1, 2]]
    id = 0
    level = 1
    assert_equal ["B","C"], watched_videos_by_friends(watched_videos, friends, id, level)

    watched_videos = [["A","B"],["C"],["B","C"],["D"]]
    friends = [[1, 2], [0, 3], [0, 3], [1, 2]]
    id = 0
    level = 2
    assert_equal ["D"], watched_videos_by_friends(watched_videos, friends, id, level)

    data = File.read("data1.txt").split("\n")
    watched_videos = eval(data[0])
    friends = eval(data[1])
    id = data[2].to_i
    level = data[3].to_i
    expected = eval(data[4])
    assert_equal expected, watched_videos_by_friends(watched_videos, friends, id, level)
  end
end
