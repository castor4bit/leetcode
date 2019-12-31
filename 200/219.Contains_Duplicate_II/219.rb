# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  h = {}

  (0..(nums.size - 1)).each do |i|
    n = nums[i]
    if h.key?(n)
      return true if i - h[n] <= k
    end
    h[n] = i
  end

  false
end
