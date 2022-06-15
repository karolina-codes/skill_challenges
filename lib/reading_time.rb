def reading_time(text)
  str_arr = text.split(' ')
  (str_arr.size / 200.0).to_s + " minutes"

end

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis, urna sed dignissim molestie, leo metus porta urna, ac auctor orci diam convallis massa. Etiam a nisl tincidunt nulla dictum venenatis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis eu aliquam mi, non ultrices ligula."

puts reading_time(text)