# @param {Integer[]} arr
# @param {Integer[][]} queries
# @return {Integer[]}
def xor_queries(arr, queries)
  s = Array.new(arr.size + 1, 0)
  (0..arr.size - 1).each do |i|
    s[i + 1] = s[i] ^ arr[i]
  end

  result = []
  queries.each do |query|
    l, r = query

    value = l == r ? arr[l] : s[r + 1] ^ s[l]
    result.push(value)
  end

  result
end
