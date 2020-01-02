# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  lw = s.split(' ').last
  lw.nil? ? 0 : lw.size
end
