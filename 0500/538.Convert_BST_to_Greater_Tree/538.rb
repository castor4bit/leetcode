# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def convert_bst(root)
  values = []
  return values if root.nil?

  q = [root]
  until q.empty?
    node = q.pop
    values.push(node.val)

    q.push(node.left) unless node.left.nil?
    q.push(node.right) unless node.right.nil?
  end

  dp = {}
  sum = 0
  values.sort.reverse.each do |n|
    if dp[n].nil?
      dp[n] = sum
      sum += n
    end
  end

  q = [root]
  until q.empty?
    node = q.pop
    node.val += dp[node.val]

    q.push(node.left) unless node.left.nil?
    q.push(node.right) unless node.right.nil?
  end

  root
end
