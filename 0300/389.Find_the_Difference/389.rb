# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  s = s.chars.sort.join
  t = t.chars.sort.join

  l = 0
  r = t.size - 1

  while l <= r
    m = l + (r - l) / 2
    if s[0, m] == t[0, m]
      l = m + 1
    else
      r = m - 1
    end
  end

  t[r]
end
