require "space_ship"

describe SpaceShip do
  let(:f) { double("f") }
  subject(:s) { SpaceShip.new(f) }

  describe "#can_launch?" do
    it "returns true if the fuel cell has capacity" do
      allow(f).to receive(:has_capacity?).and_return(true)
      expect(s.can_launch?).to eq(true)
    end

    it "returns false if the fuel cell doesn't have capacity" do
      allow(f).to receive(:has_capacity?).and_return(false)
      expect(s.can_launch?).to eq(false)
    end
  end
end
