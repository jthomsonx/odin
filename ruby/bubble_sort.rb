def bubble_sort(array)
	sorted = true
	while sorted do
		sorted = false
		0.upto(array.size-2) do |i|
			if array[i] > array[i+1]
			array[i], array[i+1] = array[i+1], array[i]
			sorted = true
			end
		end
	end
	print array.join(", ")
	puts ("")
end
bubble_sort([12,34,53,2,76,88,5,44])

def bubble_sort_by(array)
	sorted = true
	while sorted do
		sorted = false
		0.upto(array.size-2) do |i|
			if yield(array[i], array[i+1]) > 0
			array[i], array[i+1] = array[i+1], array[i]
			sorted = true
		 	end
		end
	end
	print array.join(", ")
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
	left.length - right.length
end
