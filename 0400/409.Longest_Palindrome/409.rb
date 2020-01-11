# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  counts = Hash.new(0)
  s.chars.each do |c|
    counts[c] += 1
  end

  r = 0
  length = 0
  counts.each do |k, v|
    length += (v / 2) * 2
    counts[k] = v % 2
    r |= v % 2
  end

  length + r
end
