require 'test/unit'
require './482'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test482
    assert_equal '5F3Z-2E9W', license_key_formatting('5F3Z-2e-9-w', 4)
    assert_equal '5-F3Z2-E9WA', license_key_formatting('5F3Z-2e-9-wa', 4)
    assert_equal '2-5G-3J', license_key_formatting('2-5g-3-J', 2)
  end
end
