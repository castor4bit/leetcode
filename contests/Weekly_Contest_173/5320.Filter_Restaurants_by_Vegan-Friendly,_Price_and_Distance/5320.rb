# @param {Integer[][]} restaurants
# @param {Integer} vegan_friendly
# @param {Integer} max_price
# @param {Integer} max_distance
# @return {Integer[]}
def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  restaurants = restaurants.select do |r|
    r[2] >= vegan_friendly \
      && r[3] <= max_price \
      && r[4] <= max_distance
  end

  restaurants
    .sort {|a, b| (b[1] <=> a[1]).nonzero? || (b[0] <=> a[0]) }
    .map {|r| r[0] }
end
