# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  nums = nums1.uniq + nums2.uniq

  counts = Hash.new(0)
  nums.each do |i|
    counts[i] += 1
  end

  counts.select { |_, v| v > 1 }.keys
end
