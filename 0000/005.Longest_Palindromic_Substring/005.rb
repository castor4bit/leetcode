# @param {String} s
# @return {String}
def longest_palindrome(s)
  return "" if s.empty?

  def is_palindrome(s)
    i = 0
    while i < s.size / 2
      return false if s[i] != s[-i - 1]

      i += 1
    end
    true
  end

  (2..s.size).to_a.reverse.each do |len|
    (0..s.size - len).each do |i|
      return s[i, len] if is_palindrome(s[i, len])
    end
  end

  s[0]
end
