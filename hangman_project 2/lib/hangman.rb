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
  #PART 2
  def try_guess(char)
    if self.already_attempted?(char)
      p "that has already been attempted"
      return false 
    else  
      @attempted_chars << char 
    end 
     
    if !@secret_word.include?(char)
        @remaining_incorrect_guesses -= 1 
    else  
        idx = self.get_matching_indices(char)
        self.fill_indices(char, idx)
    end 
  true 
  end 

  def ask_user_for_guess 
    p 'Enter a char:'
    response = gets.chomp 
    self.try_guess(response)
  end 

  def win?
    if @guess_word.join("") == @secret_word
      p 'WIN'
      return true 
    else  
      return false 
    end 
  end 

  def lose?
    if @remaining_incorrect_guesses == 0 
      p 'LOSE'
      return true 
    else  
      return false 
    end 
  end 

  def game_over?
    if self.win? || self.lose?
      print @secret_word
      return true 
    else  
      return false 
    end 
  end 

end
