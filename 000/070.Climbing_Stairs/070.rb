# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  result = 0
  0.step do |i|
    j = n - i
    k = n - 2 * i
    break if k < 0

    result += fact(j) / fact(j - k) / fact(k)
  end

  result
end

def fact(num)
  sum = 1
  for i in (1..num)
    sum *= i
  end

  sum
end
