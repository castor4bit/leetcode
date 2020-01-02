# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  bulls = 0
  cows = 0
  schars = secret.split('')
  gchars = guess.split('')

  i = 0
  while i < schars.size
    if schars[i] == gchars[i]
      bulls += 1
      cows -= 1
    end
    i += 1
  end

  scount = Hash.new(0)
  gcount = Hash.new(0)
  schars.each {|c| scount[c] += 1 }
  gchars.each {|c| gcount[c] += 1 }

  scount.each do |k, v|
    d = [v, gcount[k]].min
    cows += d if d > 0
  end

  "#{bulls}A#{cows}B"
end
