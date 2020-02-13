# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  ranks = {}

  nums
    .sort {|a, b| b <=> a }
    .map.with_index {|n, i| [n, i + 1] }
    .each {|a| ranks[a[0]] = a[1] }

  nums.map do |n|
    case ranks[n]
    when 1
      "Gold Medal"
    when 2
      "Silver Medal"
    when 3
      "Bronze Medal"
    else
      ranks[n].to_s
    end
  end
end
