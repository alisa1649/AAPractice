class Employee
  attr_reader :name, :salary, :boss, :title

  def initialize(name = "noname", title = "junior", salary = 10000, boss = nil)
    @name = name
    @salary = salary
    @title = title
    @boss = boss
  end

  def bonus(multiplier)
    return self.salary * multiplier
  end

  private

  def rating
    return 9001
  end
end
