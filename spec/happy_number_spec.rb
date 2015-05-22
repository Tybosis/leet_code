require 'spec_helper'
require 'happy_number'

describe 'happy number' do
  it 'should return right number for 1' do
    HappyMethods.happy_number(1).must_equal 1
  end

  it 'should return right answer for small numbers' do
    happy_nums = [7, 10, 13, 19, 23, 28, 31, 32, 44, 49]
    happy_nums.each do |number|
      HappyMethods.happy_number(number).must_equal 1
    end
  end

  it 'should return right answer for large number' do
    HappyMethods.happy_number(998).must_equal 1
  end

  it 'should timeout for a non happy number' do
    lambda{ HappyMethods.happy_number(5) }.must_raise(SystemStackError)
  end
end
