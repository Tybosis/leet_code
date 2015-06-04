require 'spec_helper'
require 'palindrome'

describe 'palindrome method' do
  it 'should return true for an empty string' do
    palindrome('').must_equal true
  end

  it 'should return true for a short palindrome' do
    palindrome('racecar').must_equal true
  end

  it 'should return true for longer palindrome with punctuation' do
    palindrome("A man, a plan, a canal: Panama").must_equal true
  end

  it 'should return false for a non palindrome' do
    palindrome('hello world').must_equal false
  end
end
