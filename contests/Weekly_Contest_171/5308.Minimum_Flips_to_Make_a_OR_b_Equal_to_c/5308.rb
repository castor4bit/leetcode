# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def min_flips(a, b, c)
  flips = 0
  i = 0
  max = [a, b, c].max

  while 2 ** i <= max
    if a[i] | b[i] != c[i]
      flips += c[i] == 1 ? 1 : (a[i] + b[i])
    end

    i += 1
  end

  flips
end
