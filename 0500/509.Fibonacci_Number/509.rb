# @param {Integer} n
# @return {Integer}
def fib(n)
  f = [0, 1]
  return f[n] if n < 2

  (2..n).step do |i|
    f[i] = f[i - 1] + f[i - 2]
  end

  f[n]
end
