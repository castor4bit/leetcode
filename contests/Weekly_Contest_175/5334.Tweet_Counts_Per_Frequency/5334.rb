class TweetCounts
    def initialize()
      @tweets = Hash.new
    end


=begin
    :type tweet_name: String
    :type time: Integer
    :rtype: Void
=end
    def record_tweet(tweet_name, time)
      @tweets[tweet_name] = [] unless @tweets.key?(tweet_name)
      @tweets[tweet_name].push(time)
    end


=begin
    :type freq: String
    :type tweet_name: String
    :type start_time: Integer
    :type end_time: Integer
    :rtype: Integer[]
=end
    def get_tweet_counts_per_frequency(freq, tweet_name, start_time, end_time)
      case freq
      when "minute"
        delta = 60
      when "hour"
        delta = 3600
      else
        delta = 86400
      end

      t = Hash.new(0)
      if @tweets.key?(tweet_name)
        @tweets[tweet_name].each do |time|
          next if time < start_time || time > end_time
          t[(time - start_time) / delta] += 1
        end
      end

      result = []
      (0..((end_time - start_time) / delta)).each do |i|
        result.push(t[i])
      end

      result
    end


end

# Your TweetCounts object will be instantiated and called as such:
# obj = TweetCounts.new()
# obj.record_tweet(tweet_name, time)
# param_2 = obj.get_tweet_counts_per_frequency(freq, tweet_name, start_time, end_time)
