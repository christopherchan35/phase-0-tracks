# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# search for students by campus
get '/search' do
  @students = db.execute("SELECT * FROM students WHERE students.campus=?", [params['campus']])
  erb :search
end

# show all campuses
get '/campuses' do
  @campuses = db.execute("SELECT * FROM campus")
  erb :campuses
end

# adding campus to campus table
get '/campus/new' do
  erb :newcampus
end

post '/campus' do
  db.execute("INSERT INTO campus (location) VALUES (?)", [params['location']])
  redirect '/campuses'
end
