=begin
# create a hash that will be filled up
# ask user for name, save as string in hash
# ask user for age, save as symbol in hash
# ask user for number of children, save as symbol in hash
# ask user for theme, save as symbol in hash
# print hash out to display
# ask user if they would like to make any changes
# make changes if needed
# display hash one last time

client_info = {}

p "Please enter your name:"
client_info["name"] = gets.chomp

p "May I ask how old you are?"
client_info[:age] = gets.chomp.to_i

p "How many children do you have?"
client_info[:children] = gets.chomp.to_i

p "Which decor theme would you like?"
client_info[:decor_theme] = gets.chomp

puts client_info
puts "\n"

p "Is there any info you'd like to update? (name, age, children, decor_theme, none)"
input = gets.chomp
if input == "none"

else
  p "What would you like to change it to?"
  update = gets.chomp

  if input == "name"
    client_info["name"] = update
  elsif input.to_sym == :age
    client_info[:age] = update.to_i
  elsif input.to_sym == :children
    client_info[:children] = update.to_i
  elsif input.to_sym == :decor_theme
    client_info[:decor_theme] = update
  end
end

p client_info
=end

# Release 3: Use a Hash in a Program
# 1. grab data from user for name, age, number of children, and decor theme
# 2. use this data as the values in a hash in appropriate data type (convert numbers to int, name to string, etc)
# 3. make the keys of the hash symbols
# 4. print the hash back when user is done with input
# 5. let the user update a key if they'd like, otherise they can enter none
# 6. print the hash one last time and exit Program

client = {}

p "Please enter your name: "
client[:name] = gets.chomp.to_s
p "Your age: "
client[:age] = gets.chomp.to_i
p "Number of children: "
client[:children] = gets.chomp.to_i
p "Decor theme: "
client[:theme] = gets.chomp.to_s

p client

p "Would you like to make any corrections? (y/n)"
choice = gets.chomp
if choice == 'Y' || choice == 'y'
  client.keys.each do |key, value|
    p "Would you like to update #{key}? (y/n)"
    choice2 = gets.chomp
    if choice2 == 'Y' || choice2 == 'y'
      p "Enter new value: "
      choice3 = gets.chomp
      client[key] = choice3
    end
  end
end

p client

