# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  t = ''
  i = 0
  r = true
  while i < s.size
    ss = s[i, k]
    ss = ss.reverse if r
    t += ss
    r = !r
    i += k
  end

  t
end
