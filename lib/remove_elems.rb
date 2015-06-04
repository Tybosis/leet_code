# Remove all elements from a linked list of integers that have value val.

# Example
# Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
# Return: 1 --> 2 --> 3 --> 4 --> 5
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def add(value)
    if @head.nil?
      @head = Node.new(value, nil)
    else
      current = @head
      @head = Node.new(value, current)
    end
  end

  def size
    size = 0
    current = @head
    return size if @head.nil?
    until current.nil?
      size += 1
      current = current.next
    end
    size
  end

  def remove_elems(value)
    current = @head
    until current.nil?
      if @head.value == value
        @head = (current.next.nil? ? nil : current.next)
        current = @head
      else
        previous = current
        current = current.next
        return if current.nil?
        if current.value == value
          previous.next = current.next
          current.next = nil
          current = current.next
        end
      end
    end
  end
end

class Node
  attr_reader :value
  attr_accessor :next

  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end
