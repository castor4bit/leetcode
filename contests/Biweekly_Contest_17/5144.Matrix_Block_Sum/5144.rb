# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[][]}
def matrix_block_sum(mat, k)
  answer = []

  dp = []
  mat.each do |m|
    arr = [0]
    i = 0
    m.each do |mm|
      arr[i + 1] = arr[i] + mm
      i += 1
    end
    dp.push(arr)
  end

  i = 0
  while i < mat.size
    answer[i] = []
    j = 0
    while j < mat[i].size
      sum = 0
      rmin = [0, i - k].max
      rmax = [mat.size - 1, i + k].min
      cmin = [0, j - k].max
      cmax = [mat[i].size - 1, j + k].min

      (rmin..rmax).each do |r|
        sum += dp[r][cmax + 1] - dp[r][cmin]
      end

      answer[i].push(sum)
      j += 1
    end
    i += 1
  end

  answer
end
