class Stack
  attr_accessor :stack

  def initialize
    @stack = []# create ivar to store stack here!
  end

  def push(el)
    stack.push(el)# adds an element to the stack
  end

  def pop
    stack.pop# removes one element from the stack
  end

  def peek
    stack.last# returns, but doesn't remove, the top element in the stack
  end
end

class Queue
attr_accessor :queue

  def initialize
    @queue = []# create ivar to store stack here!
  end

  def enqueue(el)
    queue.unshift(el)
  end

  def dequeue
    queue.pop
  end

  def peek
    queue.last
  end

end

class Map
  attr_accessor :map

  def initialize
    @map = []# create ivar to store stack here!
  end

  def set(key, value)
    flat = map.flatten
    if flat.include?(key)
      index = flat.index(key) / 2
      @map[index] = [key, value]
    else
      map << [key, value]
    end
  end

  def get(key)
    flat = map.flatten
    index = flat.index(key) / 2
    map[index]
  end

  def delete(key)
    flat = map.flatten
    index = flat.index(key) / 2
    @map = @map[0...index] + @map[index + 1..-1]
  end

  def show
    map.last
  end
end
