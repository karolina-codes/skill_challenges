class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @words_to_read = nil
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split.size
  end

  def reading_time(wpm)
    count_words / wpm
  end

  def reading_chunk(wpm, minutes)
    size_of_chunk = wpm * minutes
    contents_arr = @contents.split

    if !@words_to_read || @words_to_read >= contents_arr.size
      @words_to_read = size_of_chunk

      first_chunk = contents_arr[0...size_of_chunk].join(" ")
    else
      last_word = @words_to_read + size_of_chunk
      next_chunk = contents_arr[@words_to_read...last_word].join(" ")
      @words_to_read = last_word

      next_chunk
    end
  end
end

diary = DiaryEntry.new("Mon", "Hello hello")
puts diary.count_words.class
