# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  len = 1
  while len <= s.size / 2
    if s[0, len] == s[-len, len]
      return true if s.split(s[0, len]).empty?
    end
    len += 1
  end

  false
end
