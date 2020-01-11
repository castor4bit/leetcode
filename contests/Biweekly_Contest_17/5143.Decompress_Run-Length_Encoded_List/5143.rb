# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  r = []
  0.step(nums.size - 1, 2) do |i|
    r += Array.new(nums[i], nums[i + 1])
  end

  r
end
