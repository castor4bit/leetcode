# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max = 0
  l = 0
  r = height.size - 1

  while l < r
    h = [height[l], height[r]].min
    s = (r - l) * h
    max = s if max < s

    if height[l] < height[r]
      l += 1
    else
      r -= 1
    end
  end

  max
end
