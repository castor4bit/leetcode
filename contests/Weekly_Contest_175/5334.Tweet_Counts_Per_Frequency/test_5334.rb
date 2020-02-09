require 'test/unit'
require './5334'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5334
    tc = TweetCounts.new

    tc.record_tweet("tweet3", 0)
    tc.record_tweet("tweet3", 60)
    tc.record_tweet("tweet3", 10)
    assert_equal [2], tc.get_tweet_counts_per_frequency("minute", "tweet3", 0, 59)
    assert_equal [2, 1], tc.get_tweet_counts_per_frequency("minute", "tweet3", 0, 60)

    tc.record_tweet("tweet3", 120)
    assert_equal [4], tc.get_tweet_counts_per_frequency("hour", "tweet3", 0, 210)
    assert_equal [2, 1, 1, 0], tc.get_tweet_counts_per_frequency("minute", "tweet3", 0, 210)
    assert_equal [4], tc.get_tweet_counts_per_frequency("day", "tweet3", 0, 210)
    assert_equal [4, 0], tc.get_tweet_counts_per_frequency("day", "tweet3", 0, 90000)
  end
end
