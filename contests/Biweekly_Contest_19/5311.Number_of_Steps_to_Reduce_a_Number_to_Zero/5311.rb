# @param {Integer} num
# @return {Integer}
def number_of_steps (num)
  count = 0
  until num == 0
    num = num.even? ? (num / 2) : (num - 1)
    count += 1
  end

  count
end
