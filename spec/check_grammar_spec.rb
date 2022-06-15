require 'check_grammar'

RSpec.describe 'check_grammar method' do 
  it 'checks if text is capitalised' do 
    result = check_grammar("Today is a nce day")
    expect(result).to eq "All good, the text is capitalised."
  end
  context "text is not capitalised"
  it "fails" do
    expect {check_grammar("today is a nice day") }.to raise_error "The first word is not capitalised."
  end 
end
  