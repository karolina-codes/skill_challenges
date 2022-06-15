class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(' ').size
  end

  def reading_time(wpm)
    count_words / wpm
  end

  def reading_chunk(wpm, minutes)
    number_of_words = wpm * minutes
    contents_arr = @contents.split(' ')
    chunk = contents_arr[0...number_of_words].join(' ')
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end