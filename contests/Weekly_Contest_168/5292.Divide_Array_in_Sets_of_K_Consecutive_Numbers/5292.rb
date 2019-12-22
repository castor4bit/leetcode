# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def is_possible_divide(nums, k)
  nums.sort!

  while nums.size >= k do
    n = nums.first
    arr = (n..(n + k - 1)).to_a
    break unless arr == (nums & arr)

    arr.each do |v|
      nums.delete_at(nums.index(v))
    end
  end

  nums.empty?
end
