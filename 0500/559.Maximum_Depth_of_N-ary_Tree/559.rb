# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {int}
def maxDepth(root)
  return 0 if root.nil?

  max = 0
  q = [[root, 1]]
  until q.empty?
    node, depth = q.pop
    max = [max, depth].max

    node.children.each do |child|
      q.push([child, depth + 1])
    end
  end

  max
end
