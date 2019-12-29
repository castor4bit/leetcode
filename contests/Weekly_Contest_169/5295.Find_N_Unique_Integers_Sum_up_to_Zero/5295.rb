# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  result = n % 2 == 0 ? [] : [0]

  for i in 1..(n / 2)
    result.push(i)
    result.unshift(-i)
  end

  result
end
