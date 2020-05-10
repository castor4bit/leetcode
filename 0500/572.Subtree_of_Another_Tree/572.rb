# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)

  def tree_to_s(root)
    q = [root]
    tt = []
    until q.empty?
      node = q.shift
      if node.nil?
        tt.push(nil)
        next
      end

      tt.push(node.val)
      q += [node.left, node.right]
    end

    tt.join('.')
  end

  ts = tree_to_s(t)

  q = [s]
  until q.empty?
    node = q.pop
    return true if node.val == t.val && ts == tree_to_s(node)

    q.push(node.left) unless node.left.nil?
    q.push(node.right) unless node.right.nil?
  end

  false
end
