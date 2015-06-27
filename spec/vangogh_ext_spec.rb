require_relative "helper"
require "vangogh/ext"

describe "Vangogh::Ext" do
  it "extends integers" do
    expect(1234.abstract).to eql(1200)
    expect(1234.abbreviate).to eql("1.2k")
  end

  it "extends floats" do
    expect(1234.56.abstract).to eql(1200)
    expect(1234.56.abbreviate).to eql("1.2k")
  end
end
