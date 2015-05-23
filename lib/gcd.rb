# given two positive integers, write a program that returns the greatest
# common divisor of the two integers.
#
def greatest_common_divisor(x, y)
  first = [x, y].max
  second = [x, y].min
  return first if second == 0
  rem = first - (first / second) * second
  greatest_common_divisor(second, rem)
end
