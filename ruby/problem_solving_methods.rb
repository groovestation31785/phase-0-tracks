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

p search_array(arr, 1212345)

#Release 1
def FibSeq(n)

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