# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)
  arr.sort!
  counts = []

  m = nil
  count = 0
  (0..arr.size).each do |i|
    n = arr[i]
    if n != m
      counts.push(count) if count > 0
      count = 1
      m = n
    else
      count += 1
    end
  end

  counts.sort!.reverse!

  result = 0
  sum = 0
  len = arr.size / 2
  while sum < len
    sum += counts[result]
    result += 1
  end

  result
end
