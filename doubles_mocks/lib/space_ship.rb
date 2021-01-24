class SpaceShip
  def initialize(fuel_cell)
    @fuel_cell = fuel_cell
  end

  def can_launch?
    return @fuel_cell.has_capacity?
  end
end
