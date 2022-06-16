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
    words_to_read = wpm * minutes
    contents_arr = @contents.split(' ')
    
    if @stored_index.nil?  # class variable will be nil if first chunk is being read as it has not been initialized 
      @stored_index = words_to_read # storing the index of words to read for future chunks
      
      first_chunk = contents_arr[0...words_to_read].join(' ')
    else
      last_word_index = @stored_index + words_to_read # combining stored index from previous chunk + new amount of words to read
      next_chunk = contents_arr[@stored_index...last_word_index].join(' ')  # creating the new chunk

      @stored_index = last_word_index #storing the index that we need to start from for the next chunk
      
      next_chunk
    end   
  end
end
