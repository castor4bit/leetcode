# @param {String} palindrome
# @return {String}
def break_palindrome(palindrome)
  s = palindrome.dup

  s.chars.each_with_index do |c, idx|
    if c == "a"
      s[idx] = "b" if idx > 0 && idx == s.size - 1
      next
    end

    next if s.size.odd? && idx == s.size / 2

    s[idx] = "a"
    break
  end

  s == palindrome ? "" : s
end
