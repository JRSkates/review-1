require 'school_report'

RSpec.describe 'school_report' do
  it 'should return a formatted report' do
    string = "Green, Green, Amber, Red, Green"

    expect(school_report(string)).to eq "Green: 3\nAmber: 1\nRed: 1\nUncounted: 0"
  end

  it 'should return a formatted report with more results' do
    string = "Green, Green, Green, Green, Amber, Amber, Red, Red"

    expect(school_report(string)).to eq "Green: 4\nAmber: 2\nRed: 2\nUncounted: 0"
  end

  it 'should return a formatted report with results outside of Green, Amber or Red' do
    string = "Green, Green, Test, Amber, SecondTest, Red, Red"

    expect(school_report(string)).to eq "Green: 2\nAmber: 1\nRed: 2\nUncounted: 2"
  end
end