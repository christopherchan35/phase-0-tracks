# Release 0

def search_array(array_of_array, num)
  i = 0
  while i < array_of_array.length
    if num == array_of_array[i]
      temp = i
    end
    i+=1
  end
  temp
end


test_array = [14, 65, 92, 36, 73, 6, 2, 25]
p search_array(test_array, 36)
p search_array(test_array, 14)
p search_array(test_array, 37)

# Release 1

def fib(num)
  fib_array = [0, 1]
  i = 0
  j = 1
  while fib_array.length < num
    sum = fib_array[i] + fib_array[j]
    fib_array.push(sum)
    i += 1
    j += 1
  end
  fib_array
end

#p fib(100)
p fib(100).last == 218922995834555169026

# Release 2

# Bubble Sort

# method that takes an array as argument
# loop that stops when end of array is reached - 1
# comparison of pair of indexes
# if already sorted
  # move on (skip?)
# else
  # swap the numbers
# return the array

def bubble_sort ary
  i = 0
  while i < ary.length - 1
    if ary[i] < ary[i + 1]
      next
    else
      temp = ary[i]
      ary[i] = ary[i + 1]
      ary[i + 1] = temp
    end
    i += 1
  end
    ary
end

p bubble_sort [6,1,2,3,4,5]
