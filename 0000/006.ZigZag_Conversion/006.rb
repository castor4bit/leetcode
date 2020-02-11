# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  result = Array.new(num_rows) { [] }

  row = 0
  delta = 1
  (0..s.size - 1).each do |i|
    result[row].push(s[i])

    if delta > 0 && row >= num_rows - 1
      delta = -1
    elsif delta < 0 && row <= 0
      delta = 1
    end
    row += delta
  end

  result.map(&:join).join
end
