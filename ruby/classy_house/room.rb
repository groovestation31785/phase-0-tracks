# ROOM CLASS
# Attributes:
# - name
# - width
# - length
# - items (a collection of Item instances)
# Methods:
# - getters for items, name, width, length
# - setter for items, name
# - total_value (adds up prices of items)
# - to_s override

require_relative 'item'

class Room
	attr_reader :width, :length
	attr_accessor :name, :items

	def initialize(name, width, length)
		@name = name
		@width = width
		@length = length
		@items = []
	end

	def total_value
		total = 0
		@items.each do |item|
			total += item.price # using a method from the Item class
		end
		total
	end

	def to_s
		"#{@name} #{@width} x #{@length}"
	end
end
