require_relative "helper"

describe "Vangogh::Bin" do
  it "abstracts values" do
    expect(`bundle exec vangogh abstract 1234`.strip).to eql("1200")
  end

  it "abbreviates values" do
    expect(`bundle exec vangogh abbreviate 1234`.strip).to eql("1.2k")
  end

  it "abstracts CSVs" do
    expect(`bundle exec vangogh abstract spec/fixtures/csv.csv`.strip).to match(/baz\,12000$/)
  end

  it "abbreviates CSVs" do
    expect(`bundle exec vangogh abbreviate spec/fixtures/csv.csv`.strip).to match(/baz\,12k$/)
  end

  it "respects the field flag" do
    expect(`bundle exec vangogh abbreviate spec/fixtures/csv.csv --fields foo`.strip).to match(/baz\,12345$/)

    expect(`bundle exec vangogh abbreviate spec/fixtures/csv.csv --fields bar`.strip).to match(/baz\,12k$/)
  end
end
