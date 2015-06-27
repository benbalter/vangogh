require_relative 'helper'

describe Vangogh do
  it "abstracts numbers" do
    expect(subject.abstract(1234)).to eql(1200)
  end

  it "abbreviates numbers" do
    expect(subject.abbreviate(1234)).to eql("1.2k")
  end
end
