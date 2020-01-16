# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  def _subsets(nums, pick)
    return [[]] if nums.empty? || nums.size < pick || pick == 0
    return [nums] if nums.size == pick

    result = []
    (0..(nums.size - pick)).each do
      a = nums.shift
      b = _subsets(nums.dup, pick - 1)
      b.map {|item| item.push(a).sort! }

      result += b
    end

    result
  end

  result = []
  (0..nums.size).each do |i|
    result += _subsets(nums.dup, i)
  end

  result
end
