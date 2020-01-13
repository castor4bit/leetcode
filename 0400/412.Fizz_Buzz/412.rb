# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  result = []
  (1..n).each do |i|
    s = ""
    s += "Fizz" if i % 3 == 0
    s += "Buzz" if i % 5 == 0
    result.push(s.empty? ? i.to_s : s)
  end

  result
end
