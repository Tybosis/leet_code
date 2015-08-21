# Given an array containing only numbers, add all the elements and return the
# binary equivalent of that sum.

# Note:The binary equivalent should be in string and the array should contain
# only number otherwise return false.
#
def arr2bin(arr)
  return false if arr.select { |n| n.class != Fixnum }.size > 0
  arr.empty? ? "0" : arr.inject(:+).to_s(2)
end
