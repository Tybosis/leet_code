require 'spec_helper'
require 'rotate_array'

describe 'rotate array' do
  it 'should work for small arrays' do
    rotate([1, 2], 1).must_equal [2, 1]
  end

  it 'should work for large arrays' do
    array = (1..20).to_a
    shifted = (11..20).to_a + (1..10).to_a
    rotate(array, 10).must_equal shifted
  end
end
