# Write a rotate function that rotates a two-dimensional array (a matrix)
# either clockwise or anti-clockwise by 90 degrees, and returns the rotated array.

# The function accepts two parameters: an array, and a string specifying the
# direction or rotation. The direction will be either
# "clockwise" or "counter-clockwise".

def rotate_matrix matrix, direction
  return clockwise(matrix) if direction == "clockwise"
  return counter_clockwise(matrix) if direction == "counter-clockwise"
end

def clockwise(matrix)
  ans = []
  holder = []
  matrix[0].length.times do |count|
    matrix.each do |array|
      holder << array[count]
    end
    ans << holder.reverse
    holder = []
  end
  ans
end

def counter_clockwise(matrix)
  ans = []
  holder = []
  matrix[0].length.times do |count|
    matrix.each do |array|
      holder << array[-(count + 1)]
    end
    ans << holder
    holder = []
  end
  ans
end
