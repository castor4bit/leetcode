# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  s.chars.each do |c|
    i = t.index(c)
    t[i] = "" unless i.nil?
  end

  t.size
end
