# @param {String} s
# @return {String}
def freq_alphabets(s)
  result = ""
  idx = -1
  until s[idx].nil?
    if s[idx] == '#'
      result += (96 + s[idx - 2, 2].to_i).chr
      idx -= 3
    else
      result += (96 + s[idx].to_i).chr
      idx -= 1
    end
  end

  result.reverse
end
