# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  p = nil
  c = 0
  nums.sort.each do |n|
    return p if !p.nil? and p != n and c == 0
    c = p == n ? (c + 1) : 0
    p = n
  end
  p
end
