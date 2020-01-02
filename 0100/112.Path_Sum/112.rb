# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)

  def _path_sum(node, sum = 0)
    return [] if node.nil?

    sum += node.val
    if node.left.nil? and node.right.nil? then
      [sum]
    else
      _path_sum(node.left, sum) + _path_sum(node.right, sum)
    end
  end

  _path_sum(root).include?(sum)
end
