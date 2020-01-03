# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = %w[a i u e o A I U E O]
  i = 0
  j = s.size - 1

  while i < j
    i += 1 while i < j && !vowels.include?(s[i])
    j -= 1 while i < j && !vowels.include?(s[j])

    s[i], s[j] = s[j], s[i] if i < j && s[i] != s[j]
    i += 1
    j -= 1
  end

  s
end
