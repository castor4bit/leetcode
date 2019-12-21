# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  ret = haystack.index(needle)

  ret.nil? ? -1 : ret
end
