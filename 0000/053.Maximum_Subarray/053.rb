# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  return nums.first if nums.size == 1

  def f(nums)
    sum = 0
    max = -1.0 / 0

    nums.map {|n|
      sum += n
      max = sum if sum > max
    }
    max
  end

  m = nums.size / 2
  l = nums.slice(0..(m - 1))
  r = nums.slice(m..-1)

  [
    f(l.reverse) + f(r),
    max_sub_array(l),
    max_sub_array(r)
  ].max
end

