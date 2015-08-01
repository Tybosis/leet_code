require 'spec_helper'
require 'rotate_matrix'

describe 'rotate matrix' do
  it 'should work for a simple matrix clockwise' do
    matrix = [[1, 2], [3, 4]]
    rotate_matrix(matrix, 'clockwise').must_equal [[3, 1], [4, 2]]
  end

  it 'should work for a simple matrix counter-clockwise' do
    matrix = [[1, 2], [3, 4]]
    rotate_matrix(matrix, 'counter-clockwise').must_equal [[2, 4], [1, 3]]
  end
end
