# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  result = false
  (0..arr.size - 1).each do |i|
    n = arr[i] * 2
    (0..arr.size - 1).each do |j|
      next if i == j

      if n == arr[j]
        result = true
        break
      end
    end
    break if result
  end

  result
end
