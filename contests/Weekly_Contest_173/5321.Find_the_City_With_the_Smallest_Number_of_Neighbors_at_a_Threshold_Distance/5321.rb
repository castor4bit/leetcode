# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} distance_threshold
# @return {Integer}
def find_the_city(n, edges, distance_threshold)
  dist = Array.new(n)
  (0..(n - 1)).each do |i|
    dist[i] = Array.new(n, 1.0 / 0)
    dist[i][i] = 0
  end

  edges.each do |e|
    dist[e[0]][e[1]] = [dist[e[0]][e[1]], e[2]].min
    dist[e[1]][e[0]] = [dist[e[1]][e[0]], e[2]].min
  end

  (0..(n - 1)).each do |k|
    (0..(n - 1)).each do |i|
      (0..(n - 1)).each do |j|
        dist[i][j] = [dist[i][j], dist[i][k] + dist[k][j]].min
      end
    end
  end

  min = 1.0 / 0
  idx = 0
  (0..(n - 1)).each do |i|
    neighbors = dist[i].select {|d| d <= distance_threshold }.size - 1
    if min >= neighbors
      min = neighbors
      idx = i
    end
  end

  idx
end
