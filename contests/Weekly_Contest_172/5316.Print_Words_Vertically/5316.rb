# @param {String} s
# @return {String[]}
def print_vertically(s)
  words = s.split(" ")
  maxlen = words.reduce(0) {|a, b| [a, b.size].max }

  result = Array.new(maxlen, "")
  words.each do |word|
    maxlen.times do |i|
      result[i] += word[i].nil? ? " " : word[i]
    end
  end

  result.map(&:rstrip)
end
