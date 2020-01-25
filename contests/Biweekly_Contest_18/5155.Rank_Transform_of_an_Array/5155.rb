# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  result = []

  ranks = Hash.new
  rank = 1
  arr.sort.uniq.each do |n|
    ranks[n] = rank
    rank += 1
  end

  arr.map! {|n| ranks[n] }

  arr
end
