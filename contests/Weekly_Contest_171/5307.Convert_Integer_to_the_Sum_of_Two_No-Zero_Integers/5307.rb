# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  i = 1
  i += 1 while "#{i}#{n - i}".match?(/0/)

  [i, n - i]
end
