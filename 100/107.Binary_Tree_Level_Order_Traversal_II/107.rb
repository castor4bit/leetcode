# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_bottom(root)
  return [] if root.nil?

  left = level_order_bottom(root.left)
  right = level_order_bottom(root.right)

  result = []
  begin
    values = []
    values += left.empty? ? [] : left.pop
    values += right.empty? ? [] : right.pop
    result.unshift(values) unless values.compact.empty?
  end until left.empty? and right.empty?

  result.push([root.val])
end
