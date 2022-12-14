class GuessingGame
    attr_reader :num_attempts

    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end 

    def game_over?
        @game_over
    end 

    def check_num(num)
        @num_attempts += 1
        if @secret_num == num
            @game_over = true 
            p "you win"
        elsif @secret_num > num 
            p "too small"
        else  
            p "too big"
        end 
    end 
    
    def ask_user 
    p 'enter a number'
    response = gets.chomp.to_i
    check_num(response)
    end 


end
