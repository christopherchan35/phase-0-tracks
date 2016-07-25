# 5.5 Manipulating Strings with Iteration

# Release 0
# Take in string of full name and split by white space
# Swap the place of the 2 elements with the help of a temporary variable
# Create an array of vowels and a separate array of consonants
# Change each vowel to the next vowel in the array and each consonant to the next consonant

def swapper(spy_name)
  # Empty array to hold swapped name
  swap_name = []
  # Splits the name by whitespace
  spy_array = spy_name.split(' ')
  # Use temp variable to hold a value to swap
  temp = spy_array[0]
  # Swap first and last name
  spy_array[0] = spy_array[1].downcase
  spy_array[1] = temp.downcase

  # Split each name into its own array, split by chars, this is done to more easily capitalize the first letter of each name before joining
  spy_last = spy_array[0].split('')
  spy_first = spy_array[1].split('')

  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

  spy_last.map! do |letter|
    next_char(letter, vowels, consonants)
  end

  spy_first.map! do |letter|
    next_char(letter, vowels, consonants)
  end

  spy_last = spy_last.join.capitalize
  spy_first = spy_first.join.capitalize

  swap_name.push(spy_last)
  swap_name.push(spy_first)
  swap_name = swap_name.join(' ')
end

def next_char(char, vowels, consonants)
  if char == 'a'
    'e'
  elsif char == 'e'
    'i'
  elsif char == 'i'
    'o'
  elsif char == 'o'
    'u'
  elsif char == 'u'
    'a'
  else
    consonants[consonants.index(char)+1]
  end
end

name = ' '
fake_names = []
i = 0

until name == 'quit'
p "Enter name you would like to swap: ('quit' when finished)"
name = gets.chomp
  if name != 'quit'
    fake_names.push(name)
  end
end

fake_names.each do |name|
  p "#{name} is actually known as #{swapper(name)}"
end