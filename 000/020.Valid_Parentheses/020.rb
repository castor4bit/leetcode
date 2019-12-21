# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []

  s.split('').each do |c|
    case c
    when '(', '{', '[' then
      stack.push(c)
    when ')', '}', ']' then
      return false if stack.empty? or (c.ord - stack.pop.ord).abs > 2
    end
  end

  stack.empty?
end
