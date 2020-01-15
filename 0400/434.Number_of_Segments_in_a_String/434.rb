# @param {String} s
# @return {Integer}
def count_segments(s)
  s.split(/[^[:graph:]]/).reject(&:empty?).size
end
