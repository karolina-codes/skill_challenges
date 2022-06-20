require_relative "diary_entry"

class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    @entries
  end

  def count_words
    total_words = 0

    @entries.each { |entry| total_words += entry.count_words }

    total_words
  end

  def reading_time(wpm) # wpm is an integer representing
    self.count_words / wpm
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    num_of_words_that_could_be_read = wpm * minutes

    @entries.filter { |entry| entry.count_words <= num_of_words_that_could_be_read }.max_by(&:count_words)
  end
end
