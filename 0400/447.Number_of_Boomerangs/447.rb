# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
  return points.size if points.size <= 2

  dd = Array.new(points.size, [])
  dd.map {|d| d = Array.new(points.size) }

  count = 0
  len = points.size - 1
  (0..len).each do |i|
    (0..len).each do |j|
      next if i == j

      (0..len).each do |k|
        next if i == k || j == k

        dd[i][j] = dd[j][i] = Math.sqrt((points[j][0] - points[i][0]) ** 2 + (points[j][1] - points[i][1]) ** 2) if dd[i][j].nil?
        dd[i][k] = dd[k][i] = Math.sqrt((points[k][0] - points[i][0]) ** 2 + (points[k][1] - points[i][1]) ** 2) if dd[i][k].nil?

        count += 1 if dd[i][j] == dd[i][k]
      end
    end
  end

  count
end
