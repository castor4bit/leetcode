# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  arr.each_with_index do |n, idx|
    right_arr = arr.slice((idx + 1)..-1)
    arr[idx] = right_arr.empty? ? -1 : right_arr.max
  end

  arr
end
