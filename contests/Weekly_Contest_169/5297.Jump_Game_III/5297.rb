# @param {Integer[]} arr
# @param {Integer} start
# @return {Boolean}
def can_reach(arr, start)

  a = Array.new(arr.size, false)
  stack = [start]

  while !stack.empty? do
    pos = stack.pop
    return true if arr[pos] == 0

    next_pos = pos - arr[pos]
    if next_pos >= 0 and !a[next_pos] then
      stack.push(next_pos)
      a[next_pos] = true
    end

    next_pos = pos + arr[pos]
    if next_pos < arr.size and !a[next_pos] then
      stack.push(next_pos)
      a[next_pos] = true
    end
  end

  false
end
