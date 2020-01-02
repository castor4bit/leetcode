# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  nums.each_with_index do |num, idx|
    return idx if num >= target
  end

  nums.size
end
