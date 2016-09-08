# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
  # "<h1><a href='http://www.google.com'>Hello</a> world!</h1>"
  # name = params[:name]
  # if name
  #   "Hello, #{name}!"
  # else
  #   "Hello, you!"
  # end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# contact route that displays an address
# a GET route that displays an address

get '/contact' do
  "Our address is 124 Fake St. San Francisco, CA 94102"
end

# write a GET route that takes a person's name as a query parameter
# and returns a string with it

# http://127.0.0.1:9393/great_job/?name=Chris

get '/great_job/' do
  name = params[:name]
  if name
    # "Good job, #{params[:name]}!"
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# route that uses route parameters to add 2 numbers and respond with the result
# http://127.0.0.1:9393/1/add/2

get '/:num1/add/:num2' do
  sum = params[:num1].to_i + params[:num2].to_i
  "The sum is #{sum}"
end

# route that allows user to search the database, filter the students displayed
# http://127.0.0.1:9393/search/SF

get '/search/:campus' do
  campus = params[:campus]
  students = db.execute("SELECT * FROM students WHERE students.campus='#{campus}'")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end