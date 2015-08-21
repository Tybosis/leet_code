require 'spec_helper'
require 'array2binary'

describe 'array2binary' do
  it 'should work for empty input' do
    arr2bin([]).must_equal "0"
  end

  it 'should work for purely numerical input' do
    arr2bin([0, 1]).must_equal "1"
    arr2bin([0, 1, 1]).must_equal "10"
    arr2bin([1, 1, 1]).must_equal "11"
  end

  it 'should work for random input' do
    arr2bin([47, 5, 28, 5, 53, 36, 20, 38, 51, 16, 65, 67, 72, 4, 71, 96, 26,
             82, 30, 5, 45, 72, 90, 41, 72, 78, 34, 42, 20, 82, 22, 83, 37, 6,
             5, 91, 14, 61, 7, 85, 92, 30])
    .must_equal "11110000110"

    arr2bin([56, 95, 54, 69, 42, 69, 8, 13, 85, 21]).must_equal "1000000000"

    arr2bin([28, 32, 41, 77, 24, 48, 99, 76, 58, 45, 62, 56, 58, 74, 60])
    .must_equal "1101000110"

    arr2bin([7, 42, 71, 3, 4, 51, 18, 60, 90, 90, 79, 89, 34, 43, 12, 18, 33,
             37, 12, 86, 90, 30])
    .must_equal "1111100111"
  end

  it "must return false if array contains a non integer" do
    arr2bin([1, 1, "hello"]).must_equal false

    arr2bin([1, true, {}]).must_equal false
  end
end
