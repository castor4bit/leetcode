# @param {String} s
# @return {Integer}
def number_of_substrings(s)
  count = 0
  h = {}

  l = 0
  r = 2
  (l..r - 1).each do |i|
    h[s[i]] = i
  end

  while l < s.size - 2 && r < s.size
    h[s[r]] = r
    if h.keys.sort.join == "abc"
      ll = h.values.min
      count += (ll - l - r + s.size) + (ll - l) * (s.size - r - 1)

      l = ll + 1
      h.delete_if {|_, v| v == ll }
    end
    r += 1
  end

  count
end
