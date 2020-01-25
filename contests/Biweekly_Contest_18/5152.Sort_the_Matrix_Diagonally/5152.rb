# @param {Integer[][]} mat
# @return {Integer[][]}
def diagonal_sort(mat)
  m = mat[0].size
  n = mat.size

  x = m - 1
  y = 0

  loop do
    a = []

    xx = x
    yy = y
    while xx < m && yy < n
      a.push(mat[yy][xx])
      xx += 1
      yy += 1
    end

    a.sort!

    xx = x
    yy = y
    while xx < m && yy < n
      mat[yy][xx] = a.shift
      xx += 1
      yy += 1
    end

    if x > 0
      x -= 1
    else
      y += 1
      break if y == n
    end
  end

   mat
end
