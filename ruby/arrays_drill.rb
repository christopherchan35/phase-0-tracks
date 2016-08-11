# Release 1: Explore the Docs

# 1. Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
test_array = []
p test_array

# 2. Add five items to your array. Print the array.
5.times do |i|
  test_array << i
end

p test_array

# 3. Delete the item at index 2. Print the array.
test_array.delete(test_array[2])
p test_array

# 4. Insert a new item at index 2. Print the array.
test_array.insert(2, 10)
p test_array

# 5. Remove the first item of the array without having to refer to its index. Print the array.
test_array.delete(test_array.first)
p test_array

# 6. Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
if test_array.include?(1)
  p "Your array contains the number 1"
else
  p "Can't seem to find any one"
end

# 7. Initialize another array that already has a few items in it.
another_array = ['a', 'b', 'c', 'd', 'e']

# 8. Add the two arrays together and store them in a new variable. Print the new array.
super_array = test_array + another_array
p super_array