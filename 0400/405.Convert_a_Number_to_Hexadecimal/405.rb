# @param {Integer} num
# @return {String}
def to_hex(num)
  return "0" if num == 0

  num = (~num.abs + 1) & 0xffffffff if num < 0

  s = ""
  while num > 0
    h = num % 16
    s = (h < 10 ? h.to_s : (h + 87).chr) + s
    num /= 16
  end

  s
end
