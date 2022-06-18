require "grammar_stats"

describe GrammarStats do
  context "check(text) method takes capitalised string parameter which ends with punctuation (?!.)" do
    it "returns true" do
      stats = GrammarStats.new
      expect(stats.check("Hi there.")).to eq true
    end
    it "returns true" do
      stats = GrammarStats.new
      expect(stats.check("Hiii!!")).to eq true
    end
  end
  context "check(text) method takes uncapitalised string which does not end with good punctuation (,;: )" do
    it "returns false" do
      stats = GrammarStats.new
      expect(stats.check("hey you")).to eq false
    end
    it "returns false" do
      stats = GrammarStats.new
      expect(stats.check("hello world;;;;")).to eq false
    end
  end

  context "percentage_good method checks percentage of texts that passed check(text) method" do
    it "returns an integer representing the percentage of good text" do
      stats = GrammarStats.new
      stats.check("hey you")
      stats.check("hey you")
      stats.check("Hiii!!")
      stats.check("Hiii!!")
      stats.check("Hiii!!")
      expect(stats.percentage_good).to eq 60
    end
  end
end
