# @param {Integer[]} arr
# @param {Integer} d
# @return {Integer}
def max_jumps(arr, d)
  dp = Array.new(arr.size, 1)

  a2 = arr.map.with_index {|n, idx| [idx, n] }
  a2.sort! {|a, b| b[1] <=> a[1] }

  a2.each do |a|
    i, n = a

    p = i + 1
    while p <= [i + d, arr.size - 1].min && arr[p] < n
      dp[p] = [dp[p], dp[i] + 1].max
      p += 1
    end

    p = i - 1
    while p >= [0, i - d].max && arr[p] < n
      dp[p] = [dp[p], dp[i] + 1].max
      p -= 1
    end
  end

  dp.max
end
