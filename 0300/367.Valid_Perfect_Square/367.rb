# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  return true if num == 1

  a = 2
  b = num
  while a != b
    m = a + (b - a) / 2
    mm = m ** 2
    return true if num == mm

    if num > mm
      a = m
    else
      b = m
    end

    _m = a + (b - a) / 2
    break if m == _m
  end

  false
end
