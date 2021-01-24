require "twosum"

describe "sum_to?" do
  it "should return true if any two values in the array sum to target" do
    expect(sum_to?([15, 4, 3, 8, 2, 1], 23)).to eq(true)
  end
  it "should return false if no two values in the array sum to target" do
    expect(sum_to?([15, 4, 3, 8, 2, 1], 75)).to eq(false)
  end
end
