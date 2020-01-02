# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  a = x
  b = 0
  i = 1

  while a >= b do
    b = b * 10 + (a % 10)
    a = (a >= 10 ** i) ? a.div(10) : a

    return true if a == b
    return false if a < 10 ** i
    i += 1
  end

  false
end
