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
def sum_even_grandparent(root)
  def _sum_even_grandparent(node, parents = [])
    return 0 if node.nil?

    value = 0
    value += node.val if parents.size >= 2 && parents[1].even?
    np = parents.dup
    np.unshift(node.val)&.slice!(2)
    value += _sum_even_grandparent(node.left, np)
    value += _sum_even_grandparent(node.right, np)

    value
  end

  _sum_even_grandparent(root)
end
