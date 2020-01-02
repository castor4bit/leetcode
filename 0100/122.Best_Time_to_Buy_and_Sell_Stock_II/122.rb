# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.size < 2

  i = 0
  max = 0
  len = prices.size - 1
  v = prices[0]
  p = prices[0]

  while i < len
    while i < len and prices[i] >= prices[i + 1]
      i += 1
    end
    v = prices[i]

    while i < len and prices[i] <= prices[i + 1]
      i += 1
    end
    p = prices[i]

    max += p - v
  end

  max
end
