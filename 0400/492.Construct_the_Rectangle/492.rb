# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  w = Math.sqrt(area).floor
  l = area / w

  until w * l == area
    w -= 1
    l = area / w
  end

  [l, w]
end
