# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n <= 0

  0.step(Math.sqrt(n).ceil) do |i|
    m = 2 ** i
    return true if n == m
    break if n < m
  end

  false
end
