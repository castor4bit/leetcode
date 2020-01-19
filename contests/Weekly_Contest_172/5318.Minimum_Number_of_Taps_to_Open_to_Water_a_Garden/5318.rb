# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
  t = Array.new(n + 1, 0)
  ranges.each_with_index do |v, i|
    l = [0, i - v].max
    r = [i + v, n].min

    t[l] = [t[l], r].max
  end

  count = 0
  i = 0
  j = 0
  k = 0
  while i < n
    while j <= i
      k = [k, t[j]].max
      j += 1
    end
    break if k <= i

    count += 1
    i = k
  end

  i < n ? -1 : count
end
