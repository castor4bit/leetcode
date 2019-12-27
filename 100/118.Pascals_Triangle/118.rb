# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0

  result = []
  for i in 1..num_rows
    nums = [1]
    prev_nums = result.empty? ? [] : result[-1]

    prev_nums.each_with_index do |n, idx|
      nn = prev_nums[idx + 1]
      nn = 0 if nn.nil?

      nums.push(n + nn)
    end

    result.push(nums)
  end

  result
end
