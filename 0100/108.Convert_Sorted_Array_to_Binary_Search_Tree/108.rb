# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return nil if nums.nil? or nums.size == 0

  m = nums.size / 2
  node = TreeNode.new(nums[m])
  node.left = sorted_array_to_bst(nums.slice(0, m))
  node.right = sorted_array_to_bst(nums.slice((m + 1)..-1))

  node
end
