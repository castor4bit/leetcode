# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  map = {}
  s.split('').each_with_index do |c, i|
    return false if map.key?(c) and map[c] != t[i]
    map[c] = t[i]
  end

  map.values.uniq.size == map.size
end
