# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  gs = Hash.new
  (0..(nums2.size - 1)).each do |i|
    p = i + 1
    p += 1 until nums2[p].nil? || nums2[i] < nums2[p]

    gs[nums2[i]] = nums2[p].nil? ? -1 : nums2[p]
  end

  nums1.each_with_index do |n, i|
    nums1[i] = gs[n]
  end

  nums1
end
