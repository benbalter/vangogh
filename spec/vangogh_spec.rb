require_relative 'helper'

describe Vangogh do
  it "abstracts numbers" do
    expect(subject.abstract(1234)).to eql(1200)
  end

  it "abbreviates numbers" do
    expect(subject.abbreviate(1234)).to eql("1.2k")
  end

  it "knows when something is nummeric" do
    expect(subject.numeric?(12345)).to eql(true)
    expect(subject.numeric?("12345")).to eql(true)
    expect(subject.numeric?("12,345")).to eql(true)
    expect(subject.numeric?("123.45")).to eql(true)
    
    expect(subject.numeric?("123.45MB")).to eql(false)
    expect(subject.numeric?("123.45 foo")).to eql(false)
    expect(subject.numeric?("foo")).to eql(false)
  end
end
