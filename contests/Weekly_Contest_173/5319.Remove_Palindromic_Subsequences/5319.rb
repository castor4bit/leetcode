# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  return 0 if s.empty?

  (0..(s.size / 2)).each do |i|
    return 2 if s[i] != s[-i - 1]
  end

  1
end
