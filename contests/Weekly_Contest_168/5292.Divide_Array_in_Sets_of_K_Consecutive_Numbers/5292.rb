# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def is_possible_divide(nums, k)
  return false unless nums.size % k == 0

  counts = Hash.new {|h,k| h[k] = 0 }
  nums.each do |n|
    counts[n] += 1
  end

  while counts.size > 0 do
    n = counts.keys.min

    for i in n..(n + k - 1)
      return false if counts[i] == 0

      counts[i] -= 1
      counts.delete_if {|k,v| v <= 0 }
    end
  end

  counts.empty?
end
