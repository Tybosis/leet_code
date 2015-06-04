require 'spec_helper'
require 'remove_elems'

describe 'remove elems method' do
  before do
    @linked = LinkedList.new
  end

  it 'should work if only one element exists' do
    @linked.add 1
    @linked.remove_elems 1
    @linked.size.must_equal 0
  end

  it 'should work if multiple elements exist with same value' do
    @linked.add 5
    @linked.add 1
    @linked.add 1
    @linked.add 5
    @linked.remove_elems 5
    @linked.size.must_equal 2
    @linked.head.value.must_equal 1
    @linked.head.next.value.must_equal 1
  end

  it 'should not delete anything if the value is not in the list' do
    @linked.add 1
    @linked.add 3
    @linked.add 5
    @linked.remove_elems 7
    @linked.size.must_equal 3
  end

  it 'should work if the only value to remove is the head' do
    @linked.add 5
    @linked.add 10
    @linked.add 20
    @linked.remove_elems 20
    @linked.size.must_equal 2
    @linked.head.value.must_equal 10
  end

  it 'should work if the only value to remove is the last value' do
    @linked.add 10
    @linked.add 20
    @linked.add 30
    @linked.remove_elems 10
    @linked.size.must_equal 2
    @linked.head.next.next.must_equal nil
  end
end
