require 'spec_helper'
require 'sum_by_factors'

describe 'sum by factors method' do
  it 'should work for a small set' do
    correct = [ [2, 12], [3, 27], [5, 15] ]
    sumOfDivided([12, 15]).must_equal correct
  end

  it 'should work for larger set of numbers' do
    correct =  [[2, 54], [3, 135], [5, 90], [7, 21]]
    sumOfDivided([15, 21, 24, 30, 45]).must_equal correct
  end

  it 'should work with negative numbers' do
    correct =  [[2, 54], [3, 45], [5, 0], [7, 21]]
    sumOfDivided([15, 21, 24, 30, -45]).must_equal correct
  end

  it 'should work for a much larger set' do
    correct =  [[2, 1032], [3, 453], [5, 310], [7, 126], [11, 110], [17, 204],
                [29, 116], [41, 123], [59, 118], [79, 158], [107, 107]]
    set = [107, 158, 204, 100, 118, 123, 126, 110, 116, 100]
    sumOfDivided(set).must_equal correct
  end

  it 'should work for all negative numbers' do
    correct = [[2, -61548], [3, -4209], [5, -28265], [23, -4209], [31, -31744],
               [53, -72769], [61, -4209], [1373, -72769], [5653, -28265],
               [7451, -29804]]
    sumOfDivided([-29804, -4209, -28265, -72769, -31744]).must_equal correct
  end

  it 'should work when numbers cancel out' do
    sumOfDivided([17, -17, 51, -51]).must_equal [[3, 0], [17, 0]]
  end

  it 'should work for only one number' do
    sumOfDivided([173471]).must_equal [[41, 173471], [4231, 173471]]
  end
end
