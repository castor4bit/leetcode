# @param {Integer[]} arr
# @return {Integer}
def min_jumps(arr)
  dp = Array.new(arr.size, 1.0 / 0)
  dp[0] = 0

  q = [0]
  until q.empty?
    i = q.shift

    (0..arr.size - 1).each do |j|
      next if (j < i - 1 || i + 1 < j) && arr[j] != arr[i]
      next if i == j

      if dp[j] > dp[i] + 1
        dp[j] = dp[i] + 1
        q.push(j)
      end
    end

    break if dp[arr.size - 1] < 1.0 / 0
  end

  dp[arr.size - 1]
end
