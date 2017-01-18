def merge_sort(arrayToSort)
	if (arrayToSort.size == 1)
		return arrayToSort
	else
		center = arrayToSort.size/2
		leftArray = arrayToSort[0...center]
		rightArray = arrayToSort[center...arrayToSort.size]
		leftArray = merge_sort(leftArray)
		rightArray = merge_sort(rightArray)
		if (leftArray[-1] <= rightArray[0]) #checks if everything in left array is smaller than everything in right array
			return (leftArray + rightArray)
		end
		return merge(leftArray, rightArray)
	end
end

def merge(array1, array2)
	sorted = Array.new
	while (array1.size != 0 && array2.size != 0)
		if (array1[0] >= array2[0])
			sorted.push(array2[0])
			array2 = array2[1..-1]
		else 
			sorted.push(array1[0])
			array1 = array1[1..-1]
		end
	end
	if (array1.size > 0)
		return (sorted + array1)
	else
		return (sorted + array2)
	end
end


#print merge([1, 2, 3], [4, 8, 1, 0])
print merge_sort([4, 8, 6, 5, 3, 10, 123, 4])
puts "\n"
