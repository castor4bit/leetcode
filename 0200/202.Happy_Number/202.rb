# @param {Integer} n
# @return {Boolean}
def is_happy(n)

  def _is_happy(n, nums)
    return true if n == 1
    return false if nums.include?(n)

    nums.push(n)
    sum = n.to_s.split('').reduce(0) {|sum, s| sum + s.to_i ** 2 }

    _is_happy(sum, nums)
  end

  _is_happy(n, [])
end
