# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
  return [] if root.nil?

  q = [root]
  h = Hash.new(0)
  until q.empty?
    node = q.shift
    h[node.val] += 1

    [node.left, node.right].each do |nextnode|
      q.push(nextnode) unless nextnode.nil?
    end
  end

  max = -1.0 / 0
  h.map {|_, v| max = v if max < v }
  h.select {|_, v| v == max }.keys
end
