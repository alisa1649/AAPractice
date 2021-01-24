class PhysicalObject
  def initialize
    @position = [0, 0]
  end
end

module Throwable
  def throw
    @position = [@position[0] + 1, @position[1] + 1]
  end

  def max_velocity
    return 50
  end
end

class Fruit < PhysicalObject
  include Throwable

  def volume
    return 100
  end
end
