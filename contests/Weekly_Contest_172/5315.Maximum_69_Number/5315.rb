# @param {Integer} num
# @return {Integer}
def maximum69_number (num)
  s = num.to_s
  (0..s.size - 1).each do |i|
    if s[i] == "6"
      s[i] = "9"
      break
    end
  end

  s.to_i
end
