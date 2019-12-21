# @param {String} s
# @return {Integer}
def roman_to_int(s)
  map = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }
  result = 0
  idx = 0

  chars = s.split('')

  while idx < chars.size do
    v1 = map[chars[idx]]
    v2 = map[chars[idx + 1]]

    if v1 * 5 == v2 or v1 * 10 == v2 then
      result += (v2 - v1)
      idx += 2
    else
      result += v1
      idx += 1
    end
  end

  result
end
