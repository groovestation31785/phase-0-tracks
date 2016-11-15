# Build a house out of classes

# HOUSE CLASS
# Attributes:
# - rooms (a collections of Room instances)
# Methods:
# - getter for rooms
# - add_room (only allows up to 10 rooms)
# - square_footage (adds up the house's square footage and returns it as an integer)
# - total_value (adds up to value of items in all rooms)
# - to_s override

require_relative 'room'
require_relative 'item'

class House
	attr_reader :rooms

	def initialize
		@rooms = []
	end

	def add_room(room)
		if @rooms.length < 11
			@rooms << room
			true
		else
			false
		end
	end


	def total_value
		value = 0
		@rooms.each do |room|
			value += room.total_value
		end
		value
	end


	def square_footage
		sq_footage = 0
		@rooms.each do |room|
			sq_footage += (room.width * room.length)
		end
		sq_footage
	end

	def to_s
		house_str = ""
		@rooms.each do |room|
			house_str << room.to_s.upcase
			house_str << "\n\n"
			room.items.each do |item|
				house_str << item.to_s
				house_str << "\n"
			end
			house_str << "\n"
		end
		house_str
	end
end

# Make house
house = House.new

# Make living room
living_room = Room.new("Living room", 20, 35)
piano = Item.new("piano", "black", 1000000)
couch = Item.new("couch", "blue", 250000)
living_room.items << piano
living_room.items << couch

# Make kitchen
kitchen = Room.new("Kitchen", 10, 15)
sink = Item.new("sink", "white", 50000)
oven = Item.new("oven", "black", 300000)
kitchen.items << sink
kitchen.items << oven

house.add_room(living_room)
house.add_room(kitchen)

puts house
puts house.total_value
puts house.square_footage