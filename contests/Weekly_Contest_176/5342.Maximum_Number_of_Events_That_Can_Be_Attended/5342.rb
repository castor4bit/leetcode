# @param {Integer[][]} events
# @return {Integer}
def max_events(events)
  h = {}
  ee = Array.new(events.size, 0)

  (0..events.size - 1).each do |i|
    e = events[i]
    ee[i] = [e[0], e[1], e[1] - e[0]]
  end
  ee.sort! do |a, b|
    (a[1] <=> b[1]).nonzero? ||
      (a[2] <=> b[2])
  end

  ee.each do |e|
    (e[0]..e[1]).each do |i|
      unless h.key?(i)
        h[i] = 1
        break
      end
    end
  end

  h.keys.count
end
