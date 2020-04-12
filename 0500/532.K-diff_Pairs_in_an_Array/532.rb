# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_pairs(nums, k)
  nums.sort!

  p = {}
  (0..nums.size-2).each do |i|
    j = i + 1
    while j < nums.size
      d = (nums[j] - nums[i]).abs

      p["#{nums[i]}.#{nums[j]}"] = 1 if d == k
      j = nums.size if d > k
      j += 1
    end
  end

  p.keys.uniq.size
end
