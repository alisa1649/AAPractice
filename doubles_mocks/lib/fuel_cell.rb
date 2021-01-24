def FuelCell
  def initialize(capacity)
    @capacity = capacity
  end

  def has_capacity?
    return capacity > 0
  end

  def reduce_capcity
    capacity -= 1
  end
end
