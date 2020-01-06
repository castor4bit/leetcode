# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  i = j = 0
  while i < s.size && j < t.size
    i += 1 if s[i] == t[j]
    j += 1
  end

  i == s.size
end
