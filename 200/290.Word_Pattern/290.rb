# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  map = {}
  words = str.split(" ")
  chars = pattern.split("")

  return false unless words.size == chars.size

  chars.each_with_index do |c, i|
    map[c] = words[i] unless map.key?(c)
    return false unless map.values.uniq.count == map.values.count
    return false unless map[c] == words[i]
  end

  true
end
