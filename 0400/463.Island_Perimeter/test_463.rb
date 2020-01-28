require 'test/unit'
require './463'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test463
    grid = [
      [0, 1, 0, 0],
      [1, 1, 1, 0],
      [0, 1, 0, 0],
      [1, 1, 0, 0]
    ]
    assert_equal 16, island_perimeter(grid)
  end
end
