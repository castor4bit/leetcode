# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  idx = 0
  v = nil

  while !nums[idx].nil? do
    if v == nums[idx]
      nums.delete_at(idx)
    else
      v = nums[idx]
      idx += 1
    end
  end

  nums.size
end
