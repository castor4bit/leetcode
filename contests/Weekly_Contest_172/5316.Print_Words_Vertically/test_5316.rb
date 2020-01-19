require 'test/unit'
require './5316'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5316
    assert_equal ["HAY","ORO","WEU"], print_vertically("HOW ARE YOU")
    assert_equal ["TBONTB","OEROOE","   T"], print_vertically("TO BE OR NOT TO BE")
    assert_equal ["CIC","OSO","N M","T I","E N","S G","T"], print_vertically("CONTEST IS COMING")
  end
end
