# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0
  min = 1.0 / 0

  prices.each do |price|
    if price < min then
      min = price
    elsif (price - min) > max then
      max = price - min
    end
  end

  max
end
