# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students") # the @ makes students available throughout the template
  erb :home # this is an erb method taking a symbol as an argument
end

get '/students/new' do
  erb :new_student
end

get '/campus' do
  @campuses = db.execute("SELECT * FROM campuses") # the @ makes campuses available throughout the template
  erb :campus
end

# get '/campus/new' do
#  erb :new_campus
#  end


# create new students with a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


# I tried creating a post option for the form on the new campus page, but the strings would come out empty. I could not figure why that happened.
# post '/campus' do
#  db.execute("INSERT INTO campuses (campus_name) VALUES (?)", [params['campus_name']])
#  redirect '/campus'
# end


# add static resources