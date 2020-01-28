# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  w = grid[0].size
  h = grid.size

  total = 0
  (0..w - 1).each do |x|
    (0..h - 1).each do |y|
      next if grid[y][x] == 0

      perimeter = 4
      perimeter -= 1 if y > 0     && grid[y - 1][x] == 1
      perimeter -= 1 if y < h - 1 && grid[y + 1][x] == 1
      perimeter -= 1 if x > 0     && grid[y][x - 1] == 1
      perimeter -= 1 if x < w - 1 && grid[y][x + 1] == 1
      total += perimeter
    end
  end

  total
end
