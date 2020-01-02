# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.sort!
  idx = 0
  while nums[idx] == idx
    idx += 1
  end

  idx
end
