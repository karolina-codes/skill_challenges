class GrammarStats 
  def initialize 
    @texts_checked = 0
    @good_texts = 0
  end 

  def check(text)
    @texts_checked += 1

    if text == text.capitalize && text[-1] =~ /[?.!]/
      @good_texts += 1
      return true
    end 
    
    false
  end 

  def percentage_good
    ((@good_texts.to_f / @texts_checked.to_f) * 100).to_i
  end 
end
