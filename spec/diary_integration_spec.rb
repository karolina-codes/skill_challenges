require "diary"
require "diary_entry"

describe "Diary Integration" do
  it "adds an instance of DiaryEntry to list" do
    diary = Diary.new
    entry = DiaryEntry.new("Monday", "Today I am coding")
    expect { diary.add(entry) }.not_to raise_error
  end

  it "returns the number of words in all diary entries" do
    diary = Diary.new
    entry1 = DiaryEntry.new("Monday", "Today I am coding")
    entry2 = DiaryEntry.new("Tuesday", "Today I did some yoga")
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.count_words).to eq 9
  end

  it "returns the length of time needed to read all entries" do
    diary = Diary.new
    entry1 = DiaryEntry.new("Monday", "Today I am coding")
    entry2 = DiaryEntry.new("Tuesday", "Today I did some yoga")
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.reading_time(2)).to eq 4
  end

  it "returns chunk closest to minutes" do
    diary = Diary.new
    entry1 = DiaryEntry.new("Monday", "Today I am coding")
    entry2 = DiaryEntry.new("Tuesday", "Today I did some yoga")
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.find_best_entry_for_reading_time(1, 5)).to eq entry2
  end
end
