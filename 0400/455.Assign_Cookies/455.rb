# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  count = 0

  g.sort!
  s.sort!
  g.each do |gg|
    c = s.shift
    c = s.shift until c.nil? || gg <= c
    break if c.nil?

    count += 1
  end

  count
end
