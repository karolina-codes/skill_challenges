def check_grammar(text)
  if (text =~ /[A-Z]/) == 0 && /[?!.]/.match?(text, -1)
    puts 'All good, the text is capitalised.' 
    puts 'Your punctuation is on point.'
  else 
    fail 'The first word is not capitalised and/or your punctuation is incorrect.'
  end

  true
end



