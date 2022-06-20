require "diary"

describe Diary do
  context "initially" do
    it "has an empty list of entries" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end

  it "counts the number of words in the total entries " do
    diary = Diary.new
    entry = double("entry", :count_words => 1)
    diary.add(entry)
    expect(diary.count_words).to eq 1
  end

  it "returns an integer representing an estimate of the reading time" do
    diary = Diary.new
    entry = double("entry", :count_words => 5)
    diary.add(entry)
    expect(diary.reading_time(1)).to eq 5
  end

  it "returns find_best_entry_for_reading_time method" do
    diary = Diary.new
    entry1 = double("entry", :contents => "Has 3 words", :count_words => 3)
    entry2 = double("entry", :contents => "This has 6 words ! !", :count_words => 6)
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.find_best_entry_for_reading_time(1, 3)).to eq entry1
  end
end
