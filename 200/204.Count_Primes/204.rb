# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n < 3

  primes = Array.new(n, false)

  i = 2
  while i * i < n do
    unless  primes[i] then
      j = i
      while j * i < n do
        primes[i * j] = true
        j += 1
      end
    end

    i += 1
  end

  primes.slice!(0, 2)
  primes.reduce(0) {|sum, p| sum += p ? 0 : 1 }
end
