# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^a-z0-9]*/, '')
  m = s.size / 2

  for i in 0..m
    return false if s[i] != s[-1 - i]
  end

  true
end
