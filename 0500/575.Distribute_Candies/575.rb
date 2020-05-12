# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  m = candies.size / 2
  n = candies.uniq.size

  m > n ? n : m
end
