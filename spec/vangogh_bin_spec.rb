require_relative "helper"

describe "Vangogh::Bin" do
  it "abstracts values" do
    expect(`bundle exec vangogh abstract 1234`.strip).to eql("1200")
  end

  it "abbreviates values" do
    expect(`bundle exec vangogh abbreviate 1234`.strip).to eql("1.2k")
  end
end
