# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  len = 1
  max = nil

  while len <= nums.size do
    0.step(nums.size - len) do |n|
      sum = nums.slice(n, len).sum
      max = sum if max.nil? or max < sum
    end

    len += 1
  end

  max
end

