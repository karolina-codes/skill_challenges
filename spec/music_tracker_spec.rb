require "music_tracker"

describe MusicTracker do
  it "adds a song to list" do
    tracker = MusicTracker.new
    expect(tracker.add("Song")).to eq ["Song"]
  end

  it "shows a list of the songs" do
    tracker = MusicTracker.new
    tracker.add("Song")
    expect do
      tracker.show_list
    end.to output("Song\n").to_stdout
  end
end
