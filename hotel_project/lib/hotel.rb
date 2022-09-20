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

    def check_in(person, roomname)
        if self.room_exists?(roomname)
            if @rooms[roomname].add_occupant(person)
                p 'check in successful'
            else  
                p 'sorry, room is full'
            end
        else  
            p "sorry, room does not exist"
        end 

    end 

    def has_vacancy?
        return false if @rooms.all? {|room| room.full?}
    return true 
    end 


end
