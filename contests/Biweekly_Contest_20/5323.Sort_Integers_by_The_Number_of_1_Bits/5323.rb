# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  arr2 = []
  arr.each do |n|
    bits = n.to_s(2).chars.map(&:to_i).reduce(:+)
    arr2.push([bits, n])
  end

  arr2.sort {|a, b| (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1]) }.map {|a| a[1] }
end
