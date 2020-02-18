# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = {}

  (0..nums.size - 3).each do |i|
    j = i + 1
    k = nums.size - 1

    while j < k
      sum = nums[i] + nums[j] + nums[k]
      if sum == 0
        a = [nums[i], nums[j], nums[k]]
        result[a.to_s] = a

        break if nums[j] == nums[k]

        j += 1
        k -= 1
      elsif sum > 0
        k -= 1
      else
        j += 1
      end
    end
  end

  result.values
end
