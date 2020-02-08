# @param {Integer[]} arr
# @return {Integer}
def min_jumps(arr)
  dp = Array.new(arr.size, 1.0 / 0)
  dp[0] = 0

  targets = Hash.new
  (0..arr.size - 1).each do |i|
    targets[arr[i]] = [] unless targets.key?(arr[i])
    targets[arr[i]].push(i)
  end

  q = [0]
  until q.empty?
    i = q.shift

    ([i - 1, i + 1] + targets[arr[i]]).each do |j|
      next if j < 0 || j >= arr.size

      if dp[j] > dp[i] + 1
        dp[j] = dp[i] + 1
        q.push(j)
      end
    end
    targets[arr[i]] = []

    break if dp[arr.size - 1] < 1.0 / 0
  end

  dp[arr.size - 1]
end
