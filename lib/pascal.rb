# Given numRows, generate the first numRows of Pascal's triangle.
module Pascal
  def self.generate(num_rows)
    ans = []
    num_rows.times do |z|
      ans << (0..(z)).map { |x| binomial(z, x) }
    end
    ans
  end

  private

  def self.binomial(n, k)
    return 1 if (n - k <= 0 || k <= 0)
    factorial(n) / ( factorial(k) * factorial( n - k ) )
  end

  def self.factorial(num)
    (1..num).reduce(:*)
  end
end
