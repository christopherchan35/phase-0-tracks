p "How many employees need to be processed?"
employees = gets.chomp

i = 0
while i < employees.to_i
  p "What is your name?"
  name = gets.chomp
  p "How old are you?"
  age = gets.chomp
  p "What year were you born?"
  year = gets.chomp
  p "Want some garlic bread? (y/n)"
  bread = gets.chomp
  p "Would you like to enroll in health insurance? (y/n)"
  health = gets.chomp

  if (2016 - year.to_i) == age.to_i
    age_bool = true
  else
    age_bool = false
  end

  if bread == "y"
    bread_bool = true
  else
    bread_bool = false
  end

  if health != "y"
    health_bool = false
  else
    health_bool = true
  end


  if name == "Drake Cula" || name == "Tu Fang"
    p "Definitely a vampire"
  elsif age_bool && (bread_bool || health_bool)
    p "Probably not a vampire."
  elsif !age_bool && (bread_bool || health_bool)
    p "Probably a vampire."
  elsif !age_bool && !(bread_bool && health_bool)
    p "Almost certainly a vampire"
  else
    p "Result inconslusive"
  end
  i+=1
end
