# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # create an empty container
  # set default quantity of 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
  # empty container

# readability - var names
# dry - do not repeat
# less lines/efficiency

def create_list(items)
  list = {}
  array_of_items = items.split(" ")
  array_of_items.each do |item|
    list[item] = 1
  end
  #   items.split(" ").each{ |item| list[item] = 1 }
  p list
end

grocery_list = create_list('carrots apples cereal pizza')

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add key-value pair
  # print out newly added key-value pair
# output: newly added key-value pair

def add_to_list(item_name, list, quantity=1)
  list[item_name] = quantity
end

p add_to_list('milk', grocery_list)
#p grocery_list

=begin
Add the following items to your list
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
=end

# Method to remove an item from the list
# input: item name (key)
# steps:
  # locate the item name within the container and use delete method
  # print out newly deleted key
# output: newly deleted key

def remove_item(item_name, list)
  list.delete(item_name)
end

remove_item('carrots', grocery_list)
#p grocery_list

# Method to update the quantity of an item
# input: item name, new quantity
# steps:
  # locate the item name
  # replace current quantity with new quantity
  # print out key with new quantity
# output: item name with new quantity

def update_quantity(item_name, new_quantity, list)
  list[item_name] = new_quantity
end

update_quantity('apples', 5, grocery_list)
#p grocery_list

# Method to print a list and make it look pretty
# input: the entire container
# steps:
  # (puts) print out each item name and quantity pair, 1 by 1
# output: the updated grocery list

def print_list(list)
  puts  "Buy the following: "
  list.each do |item, quantity|
    puts "#{item}:#{quantity}"
  end
end

print_list(grocery_list)

# Release 5: Reflect
=begin
  * This lesson reestablished how important pseudocode is and how it can pave the way when you actually write code. I find it easier to write the program if I am thorough with the pseudocode.

  * If an array was used here, you would need twice as many elements to hold both the item name and the quantity. I'm not too sure about the benefits of using an array over a hash in this example. But a hash is useful here because it is able to hold both the item name and the quantity as a key-value pair.

  * A method should return the last line through implicit return.

  * I think you're able to pass in any object as data into a method, so that could be a string, an array or hash, integers, etc. I have a feeling you can pass method calls as arguments as well but will need to test that out.

  * You can either call methods within one another and hold that value with a variable. You can also do this outside of the methods, as a global variable and pass it into another variable.

  * I am more confident with the creation of methods and testing methods with puts statements. A concept that is not necessarily confusing, but I would like to practice more is daisy chaining, or multiple method chaining. It would be nice to be able to write code like that on line 21, but at this point in time would require too much time to read and understand.
=end