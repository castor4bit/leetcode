# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  i = 0
  nums.each do |n|
    j = i + 1
    nums2 = nums.slice(j..-1)
    nums2.each do |m|
      return [i, j] if n + m == target
      j = j.succ
    end
    i = i.succ
  end
end
