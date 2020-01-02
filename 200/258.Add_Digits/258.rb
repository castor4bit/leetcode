# @param {Integer} num
# @return {Integer}
def add_digits(num)
  num.zero? ? 0 : (1 + (num - 1) % 9)
end
