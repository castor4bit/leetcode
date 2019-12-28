# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n < 2

  def is_prime(n)
    return false if n <= 1
    return true if n == 2
    return false if n % 2 == 0

    3.step(Math.sqrt(n), 2) do |i|
      return false if n % i == 0
    end

    true
  end

  cnt = 0
  for i in 2..(n - 1)
    cnt += 1 if is_prime(i)
  end

  cnt
end
