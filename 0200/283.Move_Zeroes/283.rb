# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  len = nums.size - 1
  (0..len).to_a.reverse.each do |i|
    next unless nums[i] == 0

    j = i
    while j < len
      break if nums[j + 1] == 0

      nums[j], nums[j + 1] = nums[j + 1], nums[j]
      j += 1
    end
  end
end
