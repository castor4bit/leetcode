# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  max = 0

  for i in 1..(2 ** nums.size - 1)
    next if i.to_s(2).include?("11")

    sum = 0
    for j in 0..(nums.size - 1)
      sum += nums[j] if (i >> j) & 1 == 1
    end

    max = [max, sum].max
  end

  max
end
