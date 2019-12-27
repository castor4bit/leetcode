# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0

  for i in 0..(prices.size - 2)
    max = [max, (prices.slice((i + 1)..-1).max - prices[i])].max
  end

  max
end
