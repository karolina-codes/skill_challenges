def check_grammar(text)
  if (text =~ /[A-Z]/) == 0
    return "All good, the text is capitalised."
  else 
    fail "The first word is not capitalised."
  end
end


