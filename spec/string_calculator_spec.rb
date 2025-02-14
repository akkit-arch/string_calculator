require "string_calculator"

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    expect(StringCalculator.add("")).to eq(0)
  end

  it "returns the number itself when only one number is given" do
    expect(StringCalculator.add("1")).to eq(1)
  end

  it "returns sum of two numbers separated by comma" do
    expect(StringCalculator.add("1,2")).to eq(3)
  end

  it "returns sum of multiple numbers separated by comma" do
    expect(StringCalculator.add("1,2,3,4")).to eq(10)
  end

end
