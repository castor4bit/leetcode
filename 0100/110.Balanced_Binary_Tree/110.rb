# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  return true if root.nil?

  def max_depth(root)
    def _max_depth(node, depth)
      if node.nil? then
        depth
      else
        return [
          depth,
          _max_depth(node.left, depth + 1),
          _max_depth(node.right, depth + 1)
        ].max
      end
    end

    _max_depth(root, 0)
  end

  (max_depth(root.left) - max_depth(root.right)).abs <= 1 \
    and is_balanced(root.left) \
    and is_balanced(root.right)
end
