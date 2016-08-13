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