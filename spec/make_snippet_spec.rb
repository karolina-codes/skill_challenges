require "make_snippet"

RSpec.describe "make_snippet method" do
  context "if string has > 5 words" do
    it "returns first 5 words followed by ..." do
      snippet = make_snippet("Today I went on a walk")
      expect(snippet).to eq "Today I went on a..."
    end
  end
  context "if string has <=5 words" do
    it "returns the string" do
      snippet = make_snippet("Today I cooked")
      expect(snippet).to eq "Today I cooked"
    end
  end
end
