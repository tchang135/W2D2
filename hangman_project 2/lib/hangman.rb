class Hangman
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


end
