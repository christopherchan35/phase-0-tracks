# PSEUDOCODE
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # 1. create a hash to hold groceries and quantity
  # 2. set default quantity of 1
  # print the list to the console [can you use one of your other methods here?]
  # 3. using .each, loop through hash to print out item and quantity
# output: [what data type goes here, array or hash?]
# hash filled with string/symbols and integer

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # 1. split up input string
  # 2. add each item to hash as a key, with default value of 1
# output:
  # 1. display newly added item and quantity

# Method to remove an item from the list
# input: item name
# steps:
  # 1. find the key in the hash that matches the item name
  # 2. delete that key
# output:
  # 1. print out "removed #{item_name}"

# Method to update the quantity of an item
# input: item name and new quantity
# steps:
  # 1. find the key in the hash that matches item name
  # 2. updating its' quantity
# output:
  # 1. item name and new quantity

# Method to print a list and make it look pretty
# input: hash of groceries
# steps:
  # 1. loop through each key
  # 2. print out each key(item name) and value (quantity)
# output:
  # 1. print out "Item: #{item_name} - Quantity: #{quantity}"

def create_list(list_of_items="")
  list_of_groceries = {}
  list = list_of_items.split(' ')

  # list.each do |item|
  #   grocery_list[item] = 1
  # end
  list.each { |item| list_of_groceries[item] = 1 }
  list_of_groceries
end

# Refactored add, remove, update quantity into update_item() method
def update_item(item_name, item_quantity, list_of_groceries)
  if item_quantity == 0
    list_of_groceries.delete(item_name)
  else
    list_of_groceries[item_name] = item_quantity
  end
  list_of_groceries
end

# def remove_item(item_name, list_of_groceries)
#   list_of_groceries.delete(item_name)
#   list_of_groceries
# end


def print_list(list_of_groceries)
  puts "Grocery List: "
  list_of_groceries.each do |item_name, quantity|
    puts "Item: #{item_name} - Quantity: #{quantity}"
  end
end



# Tester code:
# grocery_list = create_list("carrots apples cereal pizza")
# puts grocery_list

# update_item("cookies", 3, grocery_list)
# update_item("carrots", 0, grocery_list)
# update_item("apples", 5, grocery_list)

# puts remove_item("carrots", grocery_list)

# print_list(grocery_list)

# Driver code:
groceries = create_list()
update_item("Lemonade", 2, groceries)
update_item("Tomatoes", 3, groceries)
update_item("Onions", 1, groceries)
update_item("Ice Cream", 4, groceries)

update_item("Lemonade", 0, groceries)
update_item("Ice Cream", 1, groceries)

print_list(groceries)

# Release 5: Reflect
  # * This lesson reestablished how important pseudocode is and how it can pave the way when you actually write code. I find it easier to write the program if I am thorough with the pseudocode.
  # * If an array was used here, you would need twice as many elements to hold both the item name and the quantity. I'm not too sure about the benefits of using an array over a hash in this example. But a hash is useful here because it is able to hold both the item name and the quantity as a key-value pair.
  # * A method should return the last line through implicit return.
  # * I think you're able to pass in any object as data into a method, so that could be a string, an array or hash, integers, etc. I have a feeling you can pass method calls as arguments as well but will need to test that out.
  # * You can either call methods within one another and hold that value with a variable. You can also do this outside of the methods, as a global variable and pass it into another variable.
  # * I am more confident with the creation of methods and testing methods with puts statements. A concept that is not necessarily confusing, but I would like to practice more is daisy chaining, or multiple method chaining. It would be nice to be able to write code like that on line 21, but at this point in time would require too much time to read and understand.