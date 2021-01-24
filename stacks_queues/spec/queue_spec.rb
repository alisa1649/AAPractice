require "queue"

describe MyQueue do
  subject(:q) { MyQueue.new }

  describe "#enq" do
    it "adds the given element to end of the array" do
      q.enq("Alice")
      q.enq("Bob")
      expect(q.instance_variable_get(:@arr)).to eq(["Alice", "Bob"])
    end
  end

  describe "#deq" do
    it "removes the first element from the underlying array" do
      q.instance_variable_set(:@arr, ["Alice", "Bob"])
      expect(q.deq).to eq("Alice")
      expect(q.deq).to eq("Bob")
    end
  end

  describe "round trip" do
    it "adds and removes elements in FIFO order" do
      q.enq("Alice")
      q.enq("Bob")
      expect(q.instance_variable_get(:@arr)).to eq(["Alice", "Bob"])
      expect(q.deq).to eq("Alice")
      expect(q.deq).to eq("Bob")
    end
  end
end
