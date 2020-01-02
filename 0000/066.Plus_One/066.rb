# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  carry = true
  digits.reverse.each_with_index do |n, i|
    n += 1 if carry
    carry = n >= 10
    digits[-i - 1] = n % 10
  end

  digits.unshift(1) if carry
  digits
end
