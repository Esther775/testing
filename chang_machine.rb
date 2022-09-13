require "rspec"

class ChangeMachine
  def change(total)
    coins = []
    quartner = 25
    while total >= 25
      coins << 25
      total = total - 25
    end
    while total >= 10
      coins << 10
      total = total - 10
    end
    while total >= 5
      coins << 5
      total = total - 5
    end
    while total >= 1
      coins << 1
      total = total - 1
    end
    return coins
  end
end

RSpec.describe ChangeMachine do
  describe "#change" do
    it "should return change denominations when given 116" do
      machine = ChangeMachine.new
      expect(machine.change(116)).to eq([25, 25, 25, 25, 10, 5, 1])
    end
    it "should return change denominations when given 116" do
      machine = ChangeMachine.new
      expect(machine.change(72)).to eq([25, 25, 10, 10, 1, 1])
    end
  end
end
