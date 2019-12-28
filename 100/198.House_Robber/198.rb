# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  max = 0

  i = 0
  while i < (2 ** nums.size - 1)
    s = i.to_s(2)
    if s.include?("11") then
      pos = s.index("11")
      i += s[pos..-1].gsub(/./, '0').sub(/^../, "1").to_i(2)
      next
    end

    i += 1
  end

  max
end
