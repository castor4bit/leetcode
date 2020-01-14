# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  len = [num1.size, num2.size].max

  result = ""
  carry = false
  (1..len).each do |i|
    n1 = num1[-i].nil? ? 0 : num1[-i].to_i
    n2 = num2[-i].nil? ? 0 : num2[-i].to_i

    nn = n1 + n2 + (carry ? 1 : 0)
    result = "#{nn % 10}#{result}"
    carry = nn >= 10
  end

  result = "1#{result}" if carry
  result
end
