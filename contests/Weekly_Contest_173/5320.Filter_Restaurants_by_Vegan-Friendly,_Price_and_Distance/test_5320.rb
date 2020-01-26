require 'test/unit'
require './5320'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5320
    restaurants = [[1,4,1,40,10],[2,8,0,50,5],[3,8,1,30,4],[4,10,0,10,3],[5,1,1,15,1]]
    vegan_friendly = 1
    max_price = 50
    max_distance = 10
    assert_equal [3,1,5], filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)

    restaurants = [[1,4,1,40,10],[2,8,0,50,5],[3,8,1,30,4],[4,10,0,10,3],[5,1,1,15,1]]
    vegan_friendly = 0
    max_price = 50
    max_distance = 10
    assert_equal [4,3,2,1,5], filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)

    restaurants = [[1,4,1,40,10],[2,8,0,50,5],[3,8,1,30,4],[4,10,0,10,3],[5,1,1,15,1]]
    vegan_friendly = 0
    max_price = 30
    max_distance = 3
    assert_equal [4,5], filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  end
end
