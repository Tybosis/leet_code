require 'spec_helper'
require 'prime_numbers'

describe 'prime numbers' do
  it 'should return right answer for one' do
    count_primes(1).must_equal []
  end

  it 'should work for small numbers' do
    count_primes(10).must_equal [2, 3, 5, 7]
  end

  it 'should work for larger numbers' do
    count_primes(100).must_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29,
                                  31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
                                  73, 79, 83, 89, 97]
  end
end
