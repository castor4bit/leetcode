# @param {Integer} num
# @return {Integer}
def add_digits(num)
  return num if num < 10

  num = num.to_s.split('').map(&:to_i).sum
  add_digits(num)
end
