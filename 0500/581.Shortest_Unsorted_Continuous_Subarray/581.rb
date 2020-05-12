# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  nums2 = nums.sort

  i = 0
  j = nums.size - 1

  i += 1 while i < nums.size - 1 && nums[i] == nums2[i]
  j -= 1 while j >= 0 && nums[j] == nums2[j]

  i >= j ? 0 : (j - i + 1)
end
