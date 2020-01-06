# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  result = []

  (0..(2 ** 10 - 1)).each do |i|
    bits = 0
    n = i
    while n > 0
      bits += 1 if n.odd?
      n /= 2
    end

    hours = i >> 6
    minutes = i & 0x3f
    next if hours >= 12 || minutes >= 60

    result.push(format("%<hours>d:%<minutes>02d", hours: hours, minutes: minutes)) if bits == num
  end

  result
end
