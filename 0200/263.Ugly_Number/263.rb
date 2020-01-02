# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num <= 0
  return true if num == 1

  loop do
    _num = num
    [2, 3, 5].each do |i|
      _num = _num / i if _num % i == 0
    end
    break if _num == num
    num = _num
  end

  num == 1
end
