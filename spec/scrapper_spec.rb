require "./scrapper"

describe "today" do
  it "result in todays date" do
    expect(today).to eql("Aug 12")
end