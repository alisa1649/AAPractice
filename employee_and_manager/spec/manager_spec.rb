require "rspec"
require "manager"

describe Manager do
  let(:employee1) { double ("employee1") }
  let(:employee2) { double ("employee2") }
  subject(:manager) { Manager.new("Anthony", "BigBossMan", 1000000, nil) }
  before(:each) do
    manager.employees << employee1
    manager.employees << employee2
  end
  it "returns a bonus based on all employees" do
    allow(employee1).to receive(:salary).and_return(1000)
    allow(employee2).to receive(:salary).and_return(2000)
    expect(manager.bonus(2)).to eq(6000)
  end

  describe "rating" do
    it "does not let callers access rating directly" do
      expect { manager.rating }.to raise_error(NoMethodError)
    end

    it "can access rating via public method" do
      expect { manager.has_sufficient_rating? }.to_not raise_error
      expect(manager.has_sufficient_rating?).to eq(true)
    end

    it "can't access rating of other instances" do
      expect { manager.subordinates_have_sufficient_ratings? }.to raise_error
    end
  end
end
