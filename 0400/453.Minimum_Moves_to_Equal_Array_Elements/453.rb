# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  count = 0
  mc = 1
  while nums.uniq.size > 1
    nums.sort!

    max = nums[-1]
    idx = -2
    while nums[idx] == max
      mc += 1
      idx -= 1
    end
    nums = nums.slice(0..(idx + 1))

    max2 = nums[-2]
    d1 = (max - max2).lcm(mc)
    d2 = d1 * (mc - 1) / mc

    (0..(nums.size - 2)).each do |i|
      nums[i] += d1
    end
    nums[-1] += d2

    count += d1
  end

  count
end
