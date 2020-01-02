# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  len = numbers.size

  for i in 1..len
    n = numbers[i - 1]
    nn = n + numbers[i]
    if nn == 0
      return [i, i + 1] if target == 0
      next
    end

    for j in ((i + 1)..len)
      m = numbers[j - 1]
      t = n + m
      return [i, j] if t == target
      break if t > target
    end
  end
end
