# @param {Integer} n
# @param {Integer[]} ranges
# @return {Integer}
def min_taps(n, ranges)
  def find_longest(target, ranges)
    max = 0
    maxidx = nil
    ranges.each_with_index do |range, x|
      l = x - range
      r = x + range
      if l <= target && target <= r && max < r - target
        max = r - target
        maxidx = x
      end
    end

    maxidx
  end

  count = 0
  watered = Array.new(n + 1, false)
  watered.each_with_index do |w, target|
    next if w

    maxidx = find_longest(target, ranges)
    break if maxidx.nil?

    (target..(maxidx + ranges[maxidx])).each do |i|
      watered[i] = true
    end

    count += 1
    ranges[maxidx] = 0
  end

  watered.all? ? count : -1
end
