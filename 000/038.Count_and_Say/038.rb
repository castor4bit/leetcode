# @param {Integer} n
# @return {String}
def count_and_say(n)

  def f(s)
    count = 0
    say = ""
    d = ""

    s.split('').push('').each do |c|
      unless d == c then
        say += "#{count}#{d}" if count > 0
        count = 0
      end

      d = c
      count += 1
    end

    say
  end

  ret = "1"
  (n - 1).times do
    ret = f(ret)
  end

  ret
end
