#Release 0
arr = [42, 89, 23, 1, 2432, 12, 67, 30]
def search_array(arr, digit)
	index = 0

	while index < arr.length do 
		if arr[index] == digit
			return index
		end
		index += 1	
	end	
end

p search_array(arr, 145)

#Release 1
def fib_seq(n)

	array = [0]
	n.times do |i|
		if i == 0
			array[i] = 0
		elsif i == 1
			array[i] = 1
		else 
			array[i] = array[i-1] + array[i-2]
		end
	end
	return array[0..n]
end


p fib_seq(10)

#Release 2
#Implement the bubble sort method
#For an array of numbers, order them smallest to largest.
#Look at the first two numbers and determine which one is smallest and which is largest
#If they are already in ascending order, do not swap, otherwise, switch the number's positions
#Look at the number in the second and third positions however you want. 
#Do the same for the second and third numbers as you did the first and second.
#If the first number and the new second number are not in ascending order, switch the two numbers.
#Otherwise, continue to the third and fourth number
#Continue making these comparisons until all of the numbers have been sorted into ascending order.


def bubble_sort(arr)
	x = arr.length
	loop do
		swapped = false
		(x - 1).times do |i|
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
			end
		end

		break if not swapped
	end

	arr
end

p bubble_sort([3, 6, 5, 7, 4, 2, 1])

