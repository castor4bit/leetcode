# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  count = 0
  nums.each do |num|
    count += 1 if num.to_s.size % 2 == 0
  end

  count
end
