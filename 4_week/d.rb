def bubble_sort(arr)

done = 0
until done == 100
  i = 0
  while i < arr.length-1
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
  i+=1
  end
done += 1
p arr
end
end

bubble_sort([2,3,35,6,5,23,3,65,5,89,953,2,5,5,6,3,5,51,4])