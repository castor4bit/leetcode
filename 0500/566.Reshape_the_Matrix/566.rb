# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  m = nums.flatten

  m.size == r * c ? m.each_slice(c).to_a : nums
end
