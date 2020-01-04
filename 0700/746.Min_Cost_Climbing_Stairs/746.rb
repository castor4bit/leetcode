# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  cost = [0] + cost + [0]
  dp = Array.new(cost.size, 1.0 / 0)
  dp[0] = 0

  (0..(cost.size - 2)).each do |i|
    dp[i + 1] = [dp[i + 1], dp[i] + cost[i + 1]].min
    dp[i + 2] = [dp[i + 2], dp[i] + cost[i + 2]].min if i + 2 < cost.size
  end

  dp[-1]
end
