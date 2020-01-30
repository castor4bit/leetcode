# @param {Integer} num
# @return {Integer}
def find_complement(num)
  return 1 if num == 0

  num.to_s(2).gsub(/^0+/, '').chars.map {|c| c.to_i ^ 1 }.join.to_i(2)
end
