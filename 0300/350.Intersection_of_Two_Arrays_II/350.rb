# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  def count_nums(nums)
    counts = Hash.new(0)
    nums.each do |n|
      counts[n] += 1
    end
    counts
  end

  c1 = count_nums(nums1)
  c2 = count_nums(nums2)

  (c1.keys + c2.keys).uniq.each do |c|
    c1[c] = [c1[c], c2[c]].min
  end

  result = []
  c1.each do |k, v|
    result += Array.new(v, k)
  end

  result
end
