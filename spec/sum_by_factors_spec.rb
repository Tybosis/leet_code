require 'spec_helper'
require 'sum_by_factors'

describe 'sum by factors method' do
  it 'should work for a small set' do
    correct = [ [2, 12], [3, 27], [5, 15] ]
    sumOfDivided([12, 15]).must_equal correct
  end
end
