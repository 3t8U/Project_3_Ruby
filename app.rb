require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
require('pg')
also_reload('lib/**/*.rb')
require './config'

DB = PG.connect(DB_PARAMS)

get('/') do
  erb(:home)
end
