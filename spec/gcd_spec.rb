require 'spec_helper'
require 'gcd'

describe 'greatest common divisor' do
  it 'returns other number if one number is zero' do
    greatest_common_divisor(10, 0).must_equal 10
    greatest_common_divisor(0, 10).must_equal 10
  end

  it 'works on two small numbers' do
    greatest_common_divisor(8, 12).must_equal 4
  end

  it 'works for two large numbers' do
    greatest_common_divisor(800, 460).must_equal 20
  end

  it 'works for two even larger numbers' do
    greatest_common_divisor(42000,9425).must_equal 25
  end

  it 'works for one large and one small number' do
    greatest_common_divisor(1000, 5).must_equal 5
  end
end
