require "count_words"

RSpec.describe "count_words method" do
  it "returns the number of words in the string" do
    string = count_words("I am so tired")
    expect(string).to eq 4
  end
end
