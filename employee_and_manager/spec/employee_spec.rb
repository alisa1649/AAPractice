require "rspec"
require "employee"
require "manager"

describe Employee do
  subject(:subject) { Employee.new("Anthony", "BigBossMan", 1000000, nil) }
  it "calculates bonus correctly" do
    expect(subject.bonus(3)).to eq(3000000)
  end
end
