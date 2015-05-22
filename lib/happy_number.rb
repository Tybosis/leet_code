# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process:
# Starting with any positive integer, replace the number by the sum of the
# squares of its digits, and repeat the process until the number equals 1
# (where it will stay), or it loops endlessly in a cycle

module HappyMethods
  def self.happy_number(number)
    digits = split_digits(number)
    return 1 if digits == [1]
    digits = digits.map{ |digit| digit**2 }.inject(:+)
    happy_number(digits)
  end

  private

  def self.split_digits(number)
    results = []
    until number.zero? do
      number, modulus = number.divmod(10)
      results.unshift(modulus)
    end
    results
  end
end
