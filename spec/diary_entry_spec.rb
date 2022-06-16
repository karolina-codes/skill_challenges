require 'diary_entry'

describe DiaryEntry do 
  context 'title method' do 
    it 'returns the title as a string' do 
      diary_entry = DiaryEntry.new('Wednesday', 'abc')
      result = diary_entry.title
      expect(result).to eq  'Wednesday' 
    end 
  end
  context 'contents method' do 
    it 'returns the contents as a string' do 
      diary_entry = DiaryEntry.new('Wednesday', 'abc')
      result = diary_entry.contents
      expect(result).to eq 'abc'
    end
  end
  context 'count_words method' do 
    it 'returns the number of words in the contents as an integer' do 
      diary_entry = DiaryEntry.new('Wednesday', 'abc') 
      result = diary_entry.count_words
      expect(result).to eq 1
    end 
  end
  context 'reading_time method' do
    it 'returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm' do 
      diary_entry = DiaryEntry.new('Wednesday', 'abc')
      result = diary_entry.reading_time(2)
      expect(result).to eq 0
    end 
  end
  context 'reading_chunk method' do 
    it 'Returns a string with a chunk of the contents that the user could read in the given number of minutes' do 
      diary_entry = DiaryEntry.new('Wednesday', "Today I paired with Delphine and it was really nice.") 
      result = diary_entry.reading_chunk(1, 5) 
      expect(result).to eq "Today I paired with Delphine"
    end 
  end
  context 'reading_chunk method' do
    it 'if called multiple times it reads a further chunk of text until it has all been read' do
      entry = DiaryEntry.new('Sunday', 'Today is really hot so I went and got some green juice. It was really good and I will probably get some next week as well.')
      entry.reading_chunk(1, 4)
      entry.reading_chunk(1, 4)
      entry.reading_chunk(1, 4)
      result = entry.reading_chunk(1, 4)
      expect(result).to eq 'It was really good'
    end 
  end 

end 
