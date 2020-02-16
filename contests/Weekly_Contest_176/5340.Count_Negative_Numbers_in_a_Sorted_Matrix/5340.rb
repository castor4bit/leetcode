# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  result = 0

  grid.each do |row|
    count = 0
    row.each do |n|
      break if n < 0

      count += 1
    end
    result += (row.size - count)
  end

  result
end
