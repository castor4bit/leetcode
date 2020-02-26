# @param {Integer} n
# @param {Integer[]} left_child
# @param {Integer[]} right_child
# @return {Boolean}
def validate_binary_tree_nodes(n, left_child, right_child)
  h = Hash.new(0)
  h[0] = 1

  left_child.each  {|i| h[i] += 1 if i != -1 }
  right_child.each {|i| h[i] += 1 if i != -1 }

  (0..n - 1).each do |i|
    return false if h[i] != 1
  end

  true
end
