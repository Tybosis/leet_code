# Given numRows, generate the first numRows of Pascal's triangle.

# For example, given numRows = 5,
# Return

# [
#      [1],
#     [1,1],
#    [1,2,1],
#   [1,3,3,1],
#  [1,4,6,4,1]
# ]
#
#
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
