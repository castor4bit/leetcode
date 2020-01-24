# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  count = 0
  while nums.uniq.size > 1
    nums.sort!

    (0..nums.size - 2).each do |i|
      nums[i] += 1
    end

    count += 1
  end

  count
end
