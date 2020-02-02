# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  soldiers = mat.map.with_index {|m, idx| [idx, m.sum] }
  soldiers.sort! {|a, b| (a[1] <=> b[1]).nonzero? || (a[0] <=> b[0]) }

  soldiers[0, k].map {|m| m[0] }
end
