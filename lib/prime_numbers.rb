# sieve of Eratosthenes method of calculating prime numbers up to a certain value

def count_primes(n)
  candidates = (2..n).to_a
  count = 0
  while (count < (candidates.size)) && candidates.size > 0
    p candidates[(count + 1..-1)]
    candidates[(count + 1)..-1].map do |x|
      if x % candidates[count] == 0
        candidates.delete(x)
      end
    end
    count += 1
  end
  candidates
end
