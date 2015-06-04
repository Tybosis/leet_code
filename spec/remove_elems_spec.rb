require 'spec_helper'
require 'remove_elems'

describe 'remove elems method' do
  before do
    linked = LinkedList.new
  it 'should work if only one element exists' do
    linked.add 1
    linked.remove_elems 1
    linked.size.must_equal 0
  end

  it 'should work if multiple elements exist with same value' do
    linked.add 5
    linked.add 1
    linked.add 1
    linked.add 5
    linked.remove_elems 5
    linked.size.must_equal 2
    linked.head.val.must_equal 1
    linked.head.next.val.must_equal 1
  end

  it 'should not delete anything if the value is not is the list' do
    linked.add 1
    linked.add 3
    linked.add 5
    linked.remove_elems 7
    linked.size.must_equal 3
  end
end
