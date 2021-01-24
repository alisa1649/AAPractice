class MyStack
  def initialize
    @arr = []
  end

  def push(n)
    @arr << n
  end

  def pop
    last = @arr[-1]
    @arr = @arr[0...-1]
    return last
  end

  def peek
    @arr[-1]
  end
end
