# Have encrypt method that takes in a string
# Loop through the string, one character at a time
# If that character is "z", set it to "a"
# If that character is not a space, set it to the next character
# End loop when counter reaches string.length - 1
# Puts string

def encrypt(str)
  i = 0

  while i < str.length
    if str[i] == "z"
      str[i] = "a"
    elsif str[i] != " "
      str[i] = str[i].next
    end
    i += 1
  end
  str
end

#p encrypt("abc")
#p encrypt("zed")

# Decrypt method to take in a string
# Run a loop to go through the string one character at a time
# If character is not a space,
# Determine which index in alphabet that our string index is equal to
# Assign our string index to the equivalent of the variable alphabet minus 1
# End loop when counter reaches string.length - 1
# Puts string

def decrypt(str)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while i < str.length
    if str[i] != " "
      prev = alphabet.index(str[i])
      str[i] = alphabet[prev - 1]
    end
    i+=1
  end #ends while
  str
end #ends decrypt

#p decrypt("bdc")
#p decrypt("afe")

#p decrypt(encrypt("swordfish"))
# This code works because it calls encrypt("swordfish") first, and once it has a string or value it calls decrypt on that said string/value. Which in this case, reverts it back to the original string of "swordfish".

# Ask user if they would like to encrypt or decrypt
# Ask user for password
# Depending on first answer, run appropriate method on the password
# Print the encrypted or decrypted password to the screen
# End program

p "Hello secret agent, would you like to encrypt or decrypt a password?"
choice = gets.chomp
if choice != "encrypt" && choice != "decrypt"
    p "You did not choose an appropriate option"
end

p "Hello secret agent, would you like to encrypt or decrypt a password?"
choice = gets.chomp
if choice != "encrypt" && choice != "decrypt"
    p "You did not choose an appropriate option"
end

if choice == "encrypt"
  p "Please enter the password: "
  password = gets.chomp
  p "The encrypted password is " + encrypt(password)
elsif choice == "decrypt"
  p "Please enter the password: "
  password = gets.chomp
  p "The decrypted password is " + decrypt(password)
end