# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  return false if num <= 0

  sum = 0
  (1..Math.sqrt(num)).step do |i|
    next if num % i != 0

    sum += i if i != num
    sum += (num / i) if i != 1
  end

  sum == num
end
