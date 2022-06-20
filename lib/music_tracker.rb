class MusicTracker
  def initialize
    @list = []
  end

  def add(song)
    @list << song
  end

  def show_list
    puts @list
  end
end
