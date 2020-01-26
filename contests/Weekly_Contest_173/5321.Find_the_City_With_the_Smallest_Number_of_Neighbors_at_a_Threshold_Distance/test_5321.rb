require 'test/unit'
require './5321'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5321
    n = 4
    edges = [[0,1,3],[1,2,1],[1,3,4],[2,3,1]]
    distance_threshold = 4
    assert_equal 3, find_the_city(n, edges, distance_threshold)

    n = 5
    edges = [[0,1,2],[0,4,8],[1,2,3],[1,4,2],[2,3,1],[3,4,1]]
    distance_threshold = 2
    assert_equal 0, find_the_city(n, edges, distance_threshold)

    data = File.read('./data1.txt').split("\n")
    n = eval(data[0])
    edges = eval(data[1])
    distance_threshold = eval(data[2])
    assert_equal 33, find_the_city(n, edges, distance_threshold)
  end
end
