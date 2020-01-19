# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
  t = Array.new(n + 1, 0)
  ranges.each_with_index do |v, i|
    l = [0, i - v].max
    r = [i + v, n].min

    (l..r).each do |j|
      t[j] = [t[j], r].max
    end
  end

  count = 0
  idx = 0
  while idx < n
    break if t[idx] == 0

    count += 1
    idx = t[idx]
  end

  idx < n ? -1 : count
end
