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