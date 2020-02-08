# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max = 0
  (0..s.size - 1).each do |i|
    j = i
    j += 1 until s[j + 1].nil? || !s[i..j].index(s[j + 1]).nil?
    max = j - i + 1 if max < (j - i + 1)
  end

  max
end
