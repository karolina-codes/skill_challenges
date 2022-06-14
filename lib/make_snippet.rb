def make_snippet(str)
  str_arr = str.split(" ")

  if str_arr.size > 5
    return str_arr[0..4].join(" ") + '...'
  end

  str
end
