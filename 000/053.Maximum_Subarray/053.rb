# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  idx = 0
  n = 0
  while !nums[idx].nil? do
    m = nums[idx]
    if idx > 0 and n * m >= 0 then
      nums[idx] += n
      nums.delete_at(idx - 1)
    else
      idx += 1
    end

    n = m
  end

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
