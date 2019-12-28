# @param {Integer[]} arr
# @param {Integer} target
# @return {Integer}
def find_best_value(arr, target)
  return arr.max if target == arr.sum
  return 0 if target <= arr.size

  def _find_best_value(arr, target)
    v1 = (1.0 * target / arr.size).floor
    v2 = (1.0 * target / arr.size).ceil
    diff1 = (target - arr.map {|n| n > v1 ? v1 : n }.sum).abs
    diff2 = (target - arr.map {|n| n > v2 ? v2 : n }.sum).abs

    if diff1 == diff2 then
      [v1, v2].min
    elsif diff1 < diff2 then
      v1
    else
      v2
    end
  end

  v = _find_best_value(arr, target)

  target -= arr.select {|n| n <= v }.sum
  arr = arr.select {|n| n > v}
  return v if arr.empty?

  _find_best_value(arr, target)
end
