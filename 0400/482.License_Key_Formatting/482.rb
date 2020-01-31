# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  s = s.gsub(/\-/, '').upcase
  r = []

  r.push(s.slice!([s.size - k, 0].max, k)) until s.empty?
  r.reverse.join('-')
end
