require 'check_grammar'

RSpec.describe 'check_grammar method' do 
  context 'when text is capitalised and end of text has appropriate puncutuation' do
    it 'returns true' do 
     result = check_grammar('Today is a nice day.')
     expect(result).to eq true
    end
  end
  context 'when text is not capitalised and text does not end with appropriate punctuation 'do
    it 'fails' do
      expect { check_grammar('today is a nice day') }.to raise_error 'The first word is not capitalised and/or your punctuation is incorrect.'
    end 
  end
end
  