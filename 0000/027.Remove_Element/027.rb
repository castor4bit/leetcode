# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  idx = 0

  while !nums[idx].nil? do
    if nums[idx] == val then
      nums.delete_at(idx)
    else
      idx += 1
    end
  end

  nums.size
end
