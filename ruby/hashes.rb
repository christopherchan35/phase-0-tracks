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