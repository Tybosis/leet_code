require 'spec_helper'
require 'pascal'

describe 'pascal' do
  it 'should return empty array for for input of zero' do
    Pascal.generate(0).must_equal []
  end

  it 'should return 1 for input of one' do
    Pascal.generate(1).must_equal [[1]]
  end

  it 'should return correct answer for small input' do
    correct = [
                  [1],
                 [1,1],
                [1,2,1]
              ]
    Pascal.generate(3).must_equal correct
  end

  it 'should return right answer for larger input input' do
    correct = [
                   [1],
                  [1,1],
                 [1,2,1],
                [1,3,3,1],
               [1,4,6,4,1]
              ]
    Pascal.generate(5).must_equal correct
  end
end
