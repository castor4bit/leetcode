# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.size == 0
  return nums.max if nums.size <= 2

  dp = Array.new(nums.size, 0)
  dp[0] = nums[0]
  dp[1] = nums.slice(0..1).max

  for i in 2..(nums.size - 1)
    for j in 2..(nums.size - 1)
      next if i - j < 0

      dp[i] = [dp[i], nums[i] + dp[i - j]].max
    end
  end

  dp.max
end
