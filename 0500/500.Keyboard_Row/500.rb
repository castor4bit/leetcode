# @param {String[]} words
# @return {String[]}
def find_words(words)
  rows = [
    'qwertyuiop',
    'asdfghjkl',
    'zxcvbnm'
  ]
  rindexes = Array.new(26, 0)
  rows.each_with_index do |row, idx|
    row.chars.each do |c|
      rindexes[c.ord - 97] = idx
    end
  end

  words.select do |word|
    result = true
    i = nil
    word.downcase.chars.uniq.each do |c|
      ii = rindexes[c.ord - 97]
      if !i.nil? && i != ii
        result = false
        break
      end

      i = ii
    end
  end
end
