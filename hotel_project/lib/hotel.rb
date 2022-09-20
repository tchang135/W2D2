require_relative "room"

class Hotel
    def initialize(name, capacity_of_room)
        @name = name 
        @rooms = {}

        capacity_of_room.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
        end 
    end 
end
