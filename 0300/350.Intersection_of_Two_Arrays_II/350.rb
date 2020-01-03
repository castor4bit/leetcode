# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  result = []
  counts = Hash.new(0)

  nums1.each do |n|
    counts[n] += 1
  end
  nums2.each do |n|
    if counts[n] > 0
      result.push(n)
      counts[n] -= 1
    end
  end

  result
end
