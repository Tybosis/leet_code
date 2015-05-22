def single_number(array)
  # Given an array of integers, every element appears twice except for one.
  # Find that single one.
  array.inject(0) { |total, num| total ^ num }
end


x = [1, 2, 1, 2, 4, 4, 3]

p single_number(x)
