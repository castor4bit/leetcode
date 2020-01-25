# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  result = []

  (0..nums.size - 1).each do |i|
    pos = nums[i].abs - 1
    nums[pos] *= -1 if nums[pos] > 0
  end

  (0..nums.size - 1).each do |i|
    result.push(i + 1) if nums[i] > 0
  end

  result
end
