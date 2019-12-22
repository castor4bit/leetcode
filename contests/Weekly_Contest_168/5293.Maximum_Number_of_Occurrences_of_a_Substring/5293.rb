# @param {String} s
# @param {Integer} max_letters
# @param {Integer} min_size
# @param {Integer} max_size
# @return {Integer}
def max_freq(s, max_letters, min_size, max_size)
  arr = []

  idx = 0
  while idx + min_size <= s.size do
    for size in min_size..max_size
      substr = s[idx, size]
      letters = substr.split('').uniq.size
      arr.push(substr) if letters <= max_letters and substr.size == size
    end

    idx += 1
  end

  max = arr.group_by(&:itself).map {|k, v| v.size}.max
  max.nil? ? 0 : max
end
