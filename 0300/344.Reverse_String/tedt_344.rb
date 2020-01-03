require 'test/unit'
require './344'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_344
    s = %w[h e l l o]
    reverse_string(s)
    assert_equal %w[o l l e h], s

    s = %w[H a n n a h]
    reverse_string(s)
    assert_equal %w[h a n n a H], s

    s = %w[]
    reverse_string(s)
    assert_equal %w[], s

    s = ["A"," ","m","a","n",","," ","a"," ","p","l","a","n",","," ","a"," ","c","a","n","a","l",":"," ","P","a","n","a","m","a"]
    reverse_string(s)
    assert_equal ["a","m","a","n","a","P"," ",":","l","a","n","a","c"," ","a"," ",",","n","a","l","p"," ","a"," ",",","n","a","m"," ","A"], s
  end
end
