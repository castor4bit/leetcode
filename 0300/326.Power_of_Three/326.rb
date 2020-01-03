# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n == 0

  0.step(Math.cbrt(n).ceil).each do |i|
    return true if n == 3 ** i
  end

  false
end
