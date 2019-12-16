# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  prefix = ""
  0.step do |i|
    chars = strs.map {|str| str[i] }.uniq
    break unless chars.size == 1

    c = chars.compact.first
    break if c.nil? or c.size == 0

    prefix += c
  end

  prefix
end
