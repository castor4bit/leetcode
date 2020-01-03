# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  a &= 0xffffffff
  b &= 0xffffffff

  sum = 0
  c = 0
  (0..31).each do |i|
    _a = (a >> i) & 0x01
    _b = (b >> i) & 0x01

    c, s = full_adder(_a, _b, c)
    sum |= s << i
  end

  sum &= 0xffffffff
  if sum & 0x80000000 == 0
    sum
  else
    sum = get_sum(~sum, 1)
    "-#{sum & 0x7fffffff}".to_i
  end
end

def half_adder(a, b)
  c = a & b
  s = a ^ b
  [c, s]
end

def full_adder(a, b, c)
  c1, s1 = half_adder(a, b)
  c2, s2 = half_adder(s1, c)

  [c1 | c2, s2]
end
