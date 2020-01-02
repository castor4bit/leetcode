# @param {Integer} x
# @return {Integer}
def reverse(x)
  x = x.abs.to_s.reverse.to_i * (x > 0 ? 1 : -1)
  (x >= -2 ** 31 and x < 2 ** 31) ? x : 0
end
