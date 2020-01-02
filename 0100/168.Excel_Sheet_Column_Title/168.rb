# @param {Integer} n
# @return {String}
def convert_to_title(n)
  s = []
  loop do
    n -= 1
    s.unshift((n % 26 + 65).chr)

    break if n < 26
    n = n / 26
  end

  s.join("")
end
