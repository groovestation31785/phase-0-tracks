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

p search_array(arr, 1212345)