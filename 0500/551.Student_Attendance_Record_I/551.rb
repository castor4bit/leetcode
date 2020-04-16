# @param {String} s
# @return {Boolean}
def check_record(s)
  return false if s.include?('LLL')

  p = s.index('A')
  p.nil? || !s[p + 1, s.size].to_s.include?('A')
end
