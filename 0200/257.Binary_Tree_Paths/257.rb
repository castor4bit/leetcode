# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  def _binary_tree_path(node, str = "")
    return [] if node.nil?

    str += (str.empty? ? "" : "->") + node.val.to_s
    return [str] if [node.left, node.right].all?(&:nil?)

    _binary_tree_path(node.left, str) + \
      _binary_tree_path(node.right, str)
  end

  _binary_tree_path(root)
end
