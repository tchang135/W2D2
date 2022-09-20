require_relative "room"

class Hotel
    attr_reader :rooms
    def initialize(name, capacity_of_room)
        @name = name 
        @rooms = {}

        capacity_of_room.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
        end 
    end 

    def name 
        words = @name.split(" ")
        hotel_name = words.map do |word|
            word.capitalize
        end 
    hotel_name.join(" ")
    end 

    def room_exists?(name)
        if @rooms.has_key?(name)
            return true 
        else  
            return false 
        end 
    end 

    def check_in

    end 


end
