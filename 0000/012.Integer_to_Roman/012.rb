# @param {Integer} num
# @return {String}
def int_to_roman(num)
  symbols = 'IVXLCDM'

  s = ""
  c = 0
  while num > 0
    n = num % 10
    s1 = symbols[c]
    s2 = symbols[c + 1]
    s3 = symbols[c + 2]

    case n
    when 1..3
      ss = s1 * n
    when 4
      ss = s1 + s2
    when 5..8
      ss = s2 + s1 * (n - 5)
    when 9
      ss = s1 + s3
    else
      ss = ""
    end

    s = ss + s
    c += 2
    num /= 10
  end

  s
end
