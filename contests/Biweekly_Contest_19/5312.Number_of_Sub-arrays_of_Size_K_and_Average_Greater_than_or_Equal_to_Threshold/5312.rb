# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} threshold
# @return {Integer}
def num_of_subarrays(arr, k, threshold)
  count = 0
  s = Array.new(arr.size + 1)
  s[0] = 0
  (0..arr.size - 1).each do |i|
    s[i + 1] = s[i] + arr[i]
  end

  (0..arr.size - k).each do |i|
    sum = s[i + k] - s[i]
    count += 1 if 1.0 * sum / k >= threshold
  end

  count
end
