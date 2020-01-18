# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  idx = 0
  count = 1
  while idx < chars.size
    if chars[idx] == chars[idx + 1]
      count += 1
      chars.slice!(idx + 1, 1)
    else
      if count > 1
        count.to_s.chars.map do |c|
          chars.insert(idx + 1, c)
          idx += 1
        end
      end
      count = 1
      idx += 1
    end
  end
  count.to_s.chars.reverse.map {|c| chars.insert(idx + 1, c) } if count > 1

  chars.size
end
