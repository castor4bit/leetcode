# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  k.times do
    n = nums.pop
    nums.unshift(n)
  end
end
