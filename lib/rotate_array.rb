# rotate array of elements by a certain amount of steps

def rotate(array, steps)
  i = 0
  until i == array.size - steps
    array << array.shift
    i += 1
  end
  array
end
