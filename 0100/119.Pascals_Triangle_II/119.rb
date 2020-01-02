# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  nums = []
  for i in 0..row_index
    prev = 0
    _nums = nums
    _nums.each_with_index do |n, idx|
      nums[idx] = prev + n
      prev = n
    end
    nums.push(1)
  end

  nums
end
