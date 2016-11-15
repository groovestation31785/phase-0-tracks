# ITEM CLASS
# Attributes:
# - name
# - color
# - price
# Methods:
# - getters for color, price, name
# - to_s override

class Item
	attr_reader :name, :color, :price

	def initialize(name, color, price)
		@name = name
		@color = color
		@price = price
	end

	def to_s # This is already a method, but we are redefining/overriding it so we can print the Item instance in way that is easy to read
		"A #{@color} #{@name} that cost #{@price} cents."
	end
end

# 'puts' actually stands for 'put string'. When we use 'puts' it already calls to_s on the item
# 'p' is for debugging, not printing something in a pretty way