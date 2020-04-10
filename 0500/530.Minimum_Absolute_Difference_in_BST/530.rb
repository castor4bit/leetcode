# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def get_minimum_difference(root)
  values = []
  q = [root]
  until q.empty?
    node = q.pop
    values.push(node.val)

    q.push(node.left) unless node.left.nil?
    q.push(node.right) unless node.right.nil?
  end

  values.sort!.uniq!
  return 0 if values.size < 2

  min = 1.0 / 0
  (0..values.size - 2).each do |i|
    min = [min, (values[i] - values[i + 1]).abs].min
  end

  min
end
