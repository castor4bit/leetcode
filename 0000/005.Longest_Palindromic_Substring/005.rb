# @param {String} s
# @return {String}
def longest_palindrome(s)
  return "" if s.empty?

  ll = 0
  rr = 0
  (0..s.size - 1).each do |i|
    len = 0
    (0..1).each do |j|
      l = i
      r = i + j
      while l >= 0 && r < s.size && s[l] == s[r]
        l -= 1
        r += 1
      end

      len = r - l - 1 if len < r - l - 1
    end

    if len > rr - ll
      ll = i - (len - 1) / 2
      rr = i + len / 2
    end
  end

  s[ll..rr]
end
