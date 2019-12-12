# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |n, i|
    offset = i + 1
    nums2 = nums.slice(offset..-1)
    nums2.each_with_index do |m, j|
      if n + m == target then
        return [i, (offset + j)]
      end
    end
  end
end
