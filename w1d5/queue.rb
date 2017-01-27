class Queue

  attr_accessor :queue
  def initialize
    @queue = []
  end

  def add(el)
    queue.unshift(el)
    queue
  end

  def remove
    queue.pop
    queue
  end

  def show
    queue
  end
end
