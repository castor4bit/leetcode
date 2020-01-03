# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  m = s.size / 2 - 1
  0.step(m).each do |i|
    j = -i - 1
    s[i], s[j] = s[j], s[i] if s[i] != s[j]
  end
end
