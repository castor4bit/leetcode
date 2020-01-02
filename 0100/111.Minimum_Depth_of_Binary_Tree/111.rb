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
def min_depth(root)

  def _min_depth(node, depth)
    if node.nil? then
      []
    elsif node.left.nil? and node.right.nil? then
      [depth]
    else
      _min_depth(node.left, depth + 1) + _min_depth(node.right, depth + 1)
    end
  end

  _min_depth(root, 1).min.to_i
end
