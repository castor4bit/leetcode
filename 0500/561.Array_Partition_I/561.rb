# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!.reverse!

  sum = 0
  0.step(nums.size - 1, 2) {|i| sum += [nums[i], nums[i + 1]].min }

  sum
end
