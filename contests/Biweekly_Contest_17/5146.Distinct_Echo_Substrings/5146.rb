# @param {String} text
# @return {Integer}
def distinct_echo_substrings(text)
  subs = Hash.new

  0.step(text.size - 1) do |i|
    2.step(text.size, 2) do |j|
      sub = text[i, j]
      subs[sub] = 1 if sub[0, j / 2] == sub[(j / 2)..-1]
    end
  end

  subs.size
end
