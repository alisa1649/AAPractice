require_relative "./employee.rb"

class Manager < Employee
  attr_accessor :employees

  def initialize(name, title, salary, boss, uniform, time)
    @uniform = uniform
    @time = time
    super(name, title, salary, boss)
  end

  def bonus(multiplier)
    salaries = 0
    employees.each do |employee|
      salaries += employee.salary
    end
    return salaries * multiplier
  end

  def has_sufficient_rating?
    # This will pass
    return rating > 9000
  end

  def other_has_sufficient_rating?(other)
    # This will fail; would pass if #other was protected
    return other.rating > 9000
  end

  def subordinates_have_sufficient_ratings?
    @employees.each do |e|
      return false if e.rating <= 9000
    end
    return true
  end
end
