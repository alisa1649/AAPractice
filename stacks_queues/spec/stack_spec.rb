require "stack"

describe MyStack do
  subject(:s) { MyStack.new }

  describe "#push" do
    it "adds element to end of underlying array" do
      s.push("Alice")
      s.push("Bob")
      expect(s.instance_variable_get(:@arr)).to eq(["Alice", "Bob"])
    end
  end

  describe "#pop" do
    it "removes and returns the last element of the underlying array" do
      s.instance_variable_set(:@arr, ["Alice", "Bob"])
      expect(s.pop).to eq("Bob")
      expect(s.instance_variable_get(:@arr)).to eq(["Alice"])
    end
  end

  describe "round trip" do
    it "removes and adds elements in LIFO order" do
      s.push("Alice")
      s.push("Bob")
      expect(s.instance_variable_get(:@arr)).to eq(["Alice", "Bob"])
      expect(s.pop).to eq("Bob")
      expect(s.pop).to eq("Alice")
    end
  end
end
