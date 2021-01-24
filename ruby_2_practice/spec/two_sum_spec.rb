require "two_sum"
require "rspec"

describe Gertie do
  subject(:doggie) { Gertie.new }
  describe "two_sum" do
    it "returns true if a pair in the array sum to target value" do
      expect(doggie.two_sum?([5, 2, 6, 1, 3, 4, 8, 2, 5], 14)).to eq(true)
    end

    it "returns false if no two values in the array sum to target value" do
      expect(doggie.two_sum?([5, 2, 6, 1, 3, 4, 6, 2, 5], 14)).to eq(false)
    end
  end
end
