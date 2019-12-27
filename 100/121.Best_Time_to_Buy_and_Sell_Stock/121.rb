# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0

  for i in 0..(prices.size - 2)
    price = prices.shift
    max = [max, (prices.max - price)].max
  end

  max
end
