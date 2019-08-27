def printArr(arr)
  arr.each do |v|
    print v.to_s + " "
  end
end
def bubble_sort(arr)
  sort = false
  while !sort
    sort=true
    for i in 0...arr.length-1
      if arr[i]>arr[i+1]
        aux = arr[i]
        arr[i] = arr[i+1]
        arr[i+1]=aux
        sort=false
      end
    end
  end
  printArr(arr)
end

bubble_sort([0,-6,10,2000,5000])
