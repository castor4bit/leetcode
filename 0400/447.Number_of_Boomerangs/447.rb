# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
  #return points.size if points.size <= 2

  count = 0
  len = points.size - 1
  (0..len).each do |i|
    dd = Hash.new(0)
    (0..len).each do |j|
      next if i == j

      d = (points[j][0] - points[i][0]) ** 2 + (points[j][1] - points[i][1]) ** 2
      dd[d] += 1
    end

    dd.values.select {|v| v >= 2}.each do |i|
      count += (i - 1) * i
    end
  end

  count
end
