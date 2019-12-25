# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  nums1.slice!(m..-1)
  nums2.each do |n|
    nums1.push(n)
  end
  nums1.sort!
end
