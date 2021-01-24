class MyQueue
  def initialize
    @arr = []
  end

  def enq(n)
    @arr << n
  end

  def deq
    @arr.shift
  end
end
