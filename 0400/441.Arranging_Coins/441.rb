# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  1.step do |i|
    return i - 1 if i * (i + 1) / 2 > n
  end
end
