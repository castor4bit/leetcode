# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(' ').map {|ss| ss.reverse }.join(' ')
end
