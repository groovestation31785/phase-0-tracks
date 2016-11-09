# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Start with a blank list
  	# Take the item given to us 
  	# Split into separate multiple items
  	# Use the items given to put into our blank list
  # set default quantity to one each
  # print the list to the console [can you use one of your other methods here?]
# output: hash



def create_list(item)
	grocery_list = {}
	groceries = item.split(' ')

	groceries.each do |item| 
		grocery_list[item] = 1
	end
	grocery_list
end

updated_list = create_list("bananas tomatoes potatoes cheese")


# Method to add an item to a list
# input: item name
# steps: 
	# Take item that needs added
	# Add item to the end of the list
# output: hash


def add_item(updated_list, item, quantity)
	updated_list[item] = quantity
	updated_list
end

p add_item(updated_list, "lemonade", 2)
p add_item(updated_list, "tomatoes", 3)
p add_item(updated_list, "onions", 1)
p add_item(updated_list, "ice cream", 4)

# Method to remove an item from the list
# input: item that we don't want on our list
# steps:
	# Identity the item that needs to go
	# Find the item within our list
	# Remove said item
# output: hash 

def remove_item(updated_list, item)
	updated_list.delete_if { |i| i == item}
end

p remove_item(updated_list, "lemonade")

# Method to update the quantity of an item
# input: the item name and the amount of that item
# steps:
	# Look through the list to find the item
	# Match the item with the corresponding amount
	# Set the item/quantity to the updated list
	# Do this for all the items to create a item/quantity pair
# output: hash

def change_quantity(updated_list, item, quantity)
	updated_list.each do |i, q|
		if updated_list.has_key?(item)
			updated_list[item] = quantity
		else
			puts "This list does not have that item."
			break
		end
	end

end

p change_quantity(updated_list, "ice cream", 1)

# Method to print a list and make it look pretty
# input: updated list of items and quantities
# steps:
	# Create a template for our list information
	# Cycle through the list
	# Print the list using the template
# output: strings

def print_list(updated_list)
	updated_list.each do |item, quantity|
		puts "There are #{quantity} #{item} on the list!"
	end
end

p print_list(updated_list)

=begin

RELEASE 4
- I learned that pseudocoding is deceptively difficult. I run through all the 
possible steps in my head. I've gotten into the habit of thinking about the methods
I would use or the blocks that go with iterations. It can be a challenge to
think about what I want my code to do but in plain English

- Using arrays for this challenge made the program simple at first, but produced
issues as we went along. For this reason, we used hashes. We could store the items 
along with the quantity. Even if we don't need to define a quantity, we still have
the program written so that it could take an item and quantity instead of an item 
then adding quantities to match them later on

- It returns a value that has gone through its commands and became something specific

- I am learning that a lot of different objects can be passed as an argument. At first,
it seemed like just strings and integers were the only ones. Now I find that variables can 
as well which could be anything many things like an array or hash.

- We discovered that we could take the output from one method and set it to variable.
We then passed that variable into the methods as an argument.

- The whole concept of passing around a variable without making it global can be done.
I still struggle a little with thinking of the solutions faster.I know
I would get to solution soon enough, but thinking through the process is the part that slows me down. 
When I reread the code, I struggle to think of how I initially thought to write it that way. 


=end
