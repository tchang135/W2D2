class Hangman
  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end 

  def initialize
    @secret_word = Hangman.random_word
    @attempted_chars = []
    @remaining_incorrect_guesses = 5      
    @guess_word = Array.new(@secret_word.length, '_')            
  end 

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true 
    else  
      return false 
    end 
  end 

  def get_matching_indices(char)
  indices = [] 

    @secret_word.each_char.with_index do |ele, i|
      if ele == char 
        indices << i
      end 
    end 
  indices
  end 

  def fill_indices(char, arr)
    arr.each do |num|
      @guess_word[num] = char
    end 
  end 

end
