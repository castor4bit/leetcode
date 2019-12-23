# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  # LeetCode supports v2.4.5, so Integer.sqrt cannot be used (available since v2.5)
  # Integer.sqrt(x)
  Math.sqrt(x).to_i
end
