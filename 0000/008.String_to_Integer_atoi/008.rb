# @param {String} str
# @return {Integer}
def my_atoi(str)
  if matches = str.strip.match(/^([+-]?[0-9]+)/)
    n = matches[1].to_i
    [[n, 2 ** 31 - 1].min, -(2 ** 31)].max
  else
    0
  end
end
