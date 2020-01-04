# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  counts = Hash.new(0)
  s.chars.each do |c|
    counts[c] += 1
  end

  index = counts
          .select { |_, v| v == 1 }
          .keys
          .map { |c| s.index(c) }
          .min

  index.nil? ? -1 : index
end
