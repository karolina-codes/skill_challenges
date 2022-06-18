class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # initializing at the top is preferable as it allows you to see the variables used from the beginning
    @title = title
    @contents = contents
    @stored_index = 0
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

  def reading_chunk(wpm, minutes) # both inputs are integers
    words_to_read = wpm * minutes
    contents_arr = @contents.split

    if @stored_index.zero? || @stored_index >= contents_arr.size
      # instance variable = nil for first chunk as it's not initialized || restart from beginning if all words have been read
      @stored_index = words_to_read # storing the index of words to read for future chunks

      first_chunk = contents_arr[0...words_to_read].join(" ")
    else
      last_word_index = @stored_index + words_to_read # combining stored index from previous chunk + new amount of words to read
      next_chunk = contents_arr[@stored_index...last_word_index].join(" ") # creating the new chunk

      @stored_index = last_word_index #storing the index that we need to start from for the next chunk

      next_chunk
    end
  end
end

entry =
  DiaryEntry.new(
    "Sunday",
    "Today is really hot so I went and got some green juice. It was really good and I will probably get some next week as well."
  )

puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
puts entry.reading_chunk(1, 4)
