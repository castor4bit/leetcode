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
# @return {Integer}
def path_sum(root, sum)
  def _path_sum(node, sum, arr = [])
    return 0 if node.nil?

    arr.push(node.val)
    count = 0
    (0..(arr.size - 1)).each do |i|
      count += 1 if arr[i..-1].sum == sum
    end

    count \
      + _path_sum(node.left, sum, arr.dup) \
      + _path_sum(node.right, sum, arr.dup)
  end

  _path_sum(root, sum)
end
