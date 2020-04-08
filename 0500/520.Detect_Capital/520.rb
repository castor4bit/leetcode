# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  /^([A-Z][a-z]*|[A-Z]+|[a-z]+)$/.match?(word)
end
