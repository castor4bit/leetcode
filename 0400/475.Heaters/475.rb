# @param {Integer[]} houses
# @param {Integer[]} heaters
# @return {Integer}
def find_radius(houses, heaters)
  houses.sort!
  heaters.sort!
  heaters.push(1.0 / 0)

  hi = 0
  rmax = 0
  houses.each do |h|
    hi += 1 while heaters[hi + 1] <= h
    rmax = [rmax, [(heaters[hi] - h).abs, (heaters[hi + 1] - h).abs].min].max
  end

  rmax
end
