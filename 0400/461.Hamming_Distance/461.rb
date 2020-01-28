# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  count = 0
  (0..31).each do |i|
    count += (x >> i & 0x01) ^ (y >> i & 0x01)
  end

  count
end
