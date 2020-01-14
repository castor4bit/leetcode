# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  maxes = Array.new(3, -1.0 / 0)

  nums.each do |n|
    maxes.each_with_index do |m, idx|
      if m < n
        maxes.insert(idx, n)
        maxes.slice!(3..-1)
        break
      elsif m == n
        break
      end
    end
  end

  maxes[2] == -1.0 / 0 ? maxes[0] : maxes[2]
end
