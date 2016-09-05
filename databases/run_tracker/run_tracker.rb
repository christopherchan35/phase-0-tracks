# Run Tracker program using Ruby and sqlite3

# Required gems
require 'sqlite3'

db = SQLite3::Database.new("runs.db")

# command to create initial Database
create_run_table = <<-SQL
  CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number_of_runs INT,
    distance_ran DECIMAL(3,2),
    time_ran DECIMAL(4,2)
    )
SQL

db.execute(create_run_table)

# Add test run
# db.execute("INSERT INTO runs (name, number_of_runs, distance_ran) VALUES ('Chris', 0, 0.0)")

# Adds new user
def update_user(db, name, times_ran=0, miles_ran=0.00, pace)
  db.execute("INSERT INTO runs (name, number_of_runs, distance_ran, time_ran) VALUES (?,?,?,?)", [name, times_ran, miles_ran, pace])
end

# Shows number of miles a user has run
# But output shows up as a nested hash for some reason
# Need to fix in a future update
def number_of_miles(db, name)
  sum = db.execute("SELECT SUM(distance_ran)
    FROM runs
    WHERE name = ?", name)
  puts "You've ran #{sum} miles!"
end

# Shows average pace
def show_pace(db, name)
  avg_pace = db.execute("SELECT SUM(distance_ran)/AVG(time_ran)
    FROM runs
    WHERE name = ?", name)
  puts "Your average pace is #{avg_pace} mph."
end

# Shows total runs for the specific user
def show_total_runs(db, name)
  total_run = db.execute("SELECT SUM(number_of_runs)
    FROM runs
    WHERE name = ?", name)
  puts "You've ran #{total_run} times!"
end

######################
### USER INTERFACE ###
######################

puts "Welcome to the Run Tracker 2000!
  Please enter your name: "
user_name = gets.chomp
puts "Hello #{user_name}, what would you like to do?
(1) Add a new run
(2) Show number of miles ran
(3) Show average pace
(4) Show total number of runs
type 'done' when finished"

user_choice = gets.chomp

until user_choice == 'done'
  if user_choice.to_i == 1
    puts "Enter miles ran: "
    miles = gets.chomp
    puts "Enter pace per mile: "
    pace = gets.chomp
    update_user(db, user_name, 1, miles, pace)

  elsif user_choice.to_i == 2
    number_of_miles(db, user_name)
  elsif user_choice.to_i == 3
    show_pace(db, user_name)
  elsif user_choice.to_i == 4
    show_total_runs(db, user_name)
  elsif
    puts "Invalid input, please enter 1-4: "
    user_choice = gets.chomp
  end
  puts "\nWould you like to do anything else?
  (1) Add a new run
  (2) Show number of miles ran
  (3) Show average pace
  (4) Show total number of runs
  type 'done' when finished"
  user_choice = gets.chomp

end