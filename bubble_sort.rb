# frozen_string_literal: true

def print_arr(arr)
  arr.each do |v|
    print "#{v} "
  end
  print "\n"
end

def bubble_sort(arr)
  sort = false
  until sort
    sort = true
    for i in 0...arr.length-1
      if arr[i] > arr[i+1]
        aux = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = aux
        sort = false
      end
    end
  end
  print_arr(arr)
end

bubble_sort([0,-6,10,2000,5000])

def bubble_sort_by(arr)
  sort = false
  while !sort
    sort = true
    for i in 0...arr.length-1
      yield(arr[i], arr[i+1])
      if arr[i].length > arr[i+1].length
        aux = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = aux
        sort = false
      end
    end
  end
  print_arr(arr)
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  puts left.length - right.length
end
