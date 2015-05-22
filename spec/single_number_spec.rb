require 'spec_helper'
require 'single_number'

describe 'single number' do
  it 'returns the right answer for one element array' do
    set = [1]
    single_number(set).must_equal 1
  end

  it 'returns the right answer for small array' do
    set = [1, 1, 2, 2, 3]
    single_number(set).must_equal 3
  end

  it 'returns the right answer for a large array' do
    set = (1..1000).to_a
    set += set.dup
    set << 1001
    single_number(set).must_equal 1001
  end
end
