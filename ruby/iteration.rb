# # Release 0
# def test_method
#   p "Before block"
#   yield
#   p "After the block"
# end

# test_method {p "In the block"}
# puts "\n"

# # Release 1
# icecream_flavors = ["chocolate", "vanilla", "strawberry", "cookies n cream"]
# food = { "chips" => "not eaten", "apple" => "not eaten", "steak" => "not eaten"}

# p icecream_flavors
# icecream_flavors.each {|flavor| p "#{flavor} is a great ice cream flavor!"}
# p icecream_flavors

# puts "\n"

# p icecream_flavors
# icecream_flavors.map! do |flavor|
#   if flavor == "strawberry"
#     "mango"
#   elsif flavor == "chocolate"
#     "caramel"
#   else
#     flavor
#   end
# end
# p icecream_flavors

# puts "\n"

# p food
# food.each { |item, value| p "#{item} is #{value}" }
# p food

# # Release 2
# puts "\n"
# nums = [1,2,3,4,5,6,7,8,9,10]
# hashy = { "a" => 1, "b" => 2, "c" => 3, "d" => 4 }

# puts "#1\n"
# def kill_odds(list)
#   list.map! do |number|
#     if number % 2 == 0
#       number
#     end
#   end
#   list.delete(nil)
#   list
# end

# p kill_odds(nums)
# puts "\n"

# def keep_evens(hash)
#   new_hash = {}
#   hash.each do |letter, number|
#     if number % 2 == 0
#       new_hash.store(letter, number)
#     end
#   end
#   new_hash
# end

# p keep_evens(hashy)

# puts "\n#2\n"
# def kill_evens(hash)
#   new_hash = {}
#   hash.each do |letter, number|
#     if number % 2 > 0
#       #new_hash.store(letter, number)
#       new_hash[letter] = number
#     end
#   end
#   new_hash
# end

# p kill_evens(hashy)


# nums = [1,2,3,4,5,6,7,8,9,10]
# def keep_odds(list)
#   list.map! do |number|
#     if number % 2 > 0
#       number
#     end
#   end
#   list.delete(nil)
#   list
# end

# p keep_odds(nums)

# puts "\n#3\n"
# names = ["john", "bob", "samantha", "susan"]
# def remove_men(list)
#   women = []
#   list.each do |name|
#     if (name.include?("o") == false)
#       women.push(name)
#     end
#   end
#   women
# end

# p remove_men(names)

# students = { "john" => "male", "bob" => "male", "samantha" => "female", "susan" => "female" }
# def remove_women(list)
#   list.delete_if do |student, gender|
#     if gender == "female"
#       true
#     end
#   end
#   list
# end

# p remove_women(students)

# puts "\n#4\n"
# grades = [ 83, 62, 95, 80, 93, 100]
# =begin
# def a_students(list)
#   list.delete_if do |score|
#     if score <= 90
#       true
#     else
#       break
#     end
#   end
#   list
# end
# =end

# def a_students(list)
#   list.drop_while { |score| score <= 90 }
# end
# p a_students(grades)

# Release 0: Explore Blocks

def greeting
  puts "###### BEFORE THE BLOCK ######"
  puts "Hello World!"
  puts "###### AFTER THE BLOCK ######"
  yield("America")
end

greeting { |location| puts "Goodbye #{location}!"}
puts ""

# Release 1: Use each, map, and map!

shoe_brands = ['nike', 'adidas', 'converse', 'puma']
foods = {banana: 'fruit', steak: 'beef', carrot: 'vegetable', bread: 'grain'}

# iterate through each collection using .each

shoe_brands.each { |brand| puts "I love my #{brand} shoes!"}

puts

foods.each { |food, category| puts "A #{food} can be categorized as a #{category}"}

# iterate through collection using .map! and modifying some data
puts
p "Before .map!:"
p shoe_brands

shoe_brands.map! do |brand|
  brand.capitalize
end
puts
p "After .map!:"
p shoe_brands

# Release 2: Use the Documentation

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

example_array = ['a', 'b', 'c', 'd', 'e']
example_hash = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}

puts
puts "***** ORIGINAL DATA *****"
puts "#{example_array}"
puts "#{example_hash}"
puts

puts "#1: "
# delete characters that are vowels
p example_array.delete_if { |char| ['a', 'e', 'i', 'o', 'u'].include?(char) }
# deletes keys that are less than 3
p example_hash.delete_if { |digit, word| digit < 3}

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
example_array = ['a', 'b', 'c', 'd', 'e']
example_hash = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}

puts
puts "#2: "
# keeps characters that are vowels
p example_array.keep_if { |char| char =~ /[aeiou]/ }
# keeps keys that are even
p example_hash.delete_if { |digit, word| digit % 2 > 0 }

# 3.A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

example_array = ['a', 'b', 'c', 'd', 'e']
example_hash = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}

puts
puts "#3: "
# deletes characters that are vowels, needs to be set to a new array
rejected_array = example_array.reject { |char| char =~ /[aeiou]/ }
p rejected_array
p example_array
# keeps key-value pairs that are odd, needs to be set to a new hash
selected_hash = example_hash.select { |digit, word| digit % 2 == 0 }
p selected_hash
p example_hash

# 4.A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

example_array = ['a', 'b', 'c', 'd', 'e']
example_hash = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}

puts
puts "#4: "
# drops characters until it comes across the letter c
dropped_array = example_array.drop_while { |char| char != 'c' }
p dropped_array
p example_array
#