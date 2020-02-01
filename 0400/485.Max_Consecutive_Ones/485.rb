# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  n = nums.join('').split('0').map(&:size).max
  n.nil? ? 0 : n
end
