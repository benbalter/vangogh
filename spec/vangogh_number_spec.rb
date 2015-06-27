require_relative "helper"

describe Vangogh::Number do

  subject { Vangogh::Number.new(1234) }

  it "stores the value" do
    expect(subject.value).to eql(1234)
  end

  it "knows the number of digits" do
    expect(subject.send(:digits)).to eql(4)
  end

  it "handles numbers less than 10" do
    number = Vangogh::Number.new(1)
    expect(number.abstract).to eql(0)
    expect(number.abbreviate).to eql("0")
  end

  it "handles numbers less than 100" do
    number = Vangogh::Number.new(12)
    expect(number.abstract).to eql(0)
    expect(number.abbreviate).to eql("0")
  end

  it "handles numbers less than 1000" do
    number = Vangogh::Number.new(123)
    expect(number.abstract).to eql(100)
    expect(number.abbreviate).to eql("100")
  end

  it "handles numbers less than 10,000" do
    number = Vangogh::Number.new(1234)
    expect(number.abstract).to eql(1200)
    expect(number.abbreviate).to eql("1.2k")
  end

  it "handles numbers less than 100,000" do
    number = Vangogh::Number.new(12345)
    expect(number.abstract).to eql(12000)
    expect(number.abbreviate).to eql("12k")
  end

  it "handles numbers less than 1,000,000" do
    number = Vangogh::Number.new(123456)
    expect(number.abstract).to eql(123000)
    expect(number.abbreviate).to eql("123k")
  end

  it "handles numbers less than 1,000,000" do
    number = Vangogh::Number.new(1234567)
    expect(number.abstract).to eql(1230000)
    expect(number.abbreviate).to eql("1.23M")
  end

  it "handles numbers greater than 1,000,000" do
    number = Vangogh::Number.new(12345678)
    expect(number.abstract).to eql(12300000)
    expect(number.abbreviate).to eql("12.3M")
  end
end
