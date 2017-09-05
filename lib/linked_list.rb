class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(info)
    if @head == nil
      @head = Node.new(info)
      @tail = @head
    else
      @tail.next_node = Node.new(info)
      @tail = @tail.next_node
  end

  def prepend(info)
    if @head == nil
      @head = Node.new(info)
      @tail = @head
    else
      index = @head
      @head = Node.new(info, index)
    end
  end

  def size
    size = 0
    index = @head
    while index != nil
      size += 1
      index = index.next_node
    end
    return size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    rep = 0
    pos = @head
    while rep < index
      return if pos.next_node == nil
      pos = pos.next_node
      rep +=1
    end
    first
  end

  def pop
    @tail = nil
  end

  def contains?(item)
    pos = @head
    while pos != nil
      return true if pos.value == item
      pos = pos.next_node
    end
    false
  end

  def find(data)
    pos = @head
    rep = 0
    while pos != nil
      return rep if pos.value == data
      rep += 1
      pos = pos.next_node
  end

  def to_s
    pos = @head
    while pos != nil
      print "(#{pos.value}) -> "
      pos = pos.next_node
    end
    puts "nil"
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value=nil, next_node=nil)
     @value = value
     @next_node = next_node
  end
end
