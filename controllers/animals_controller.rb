require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

also_reload('../models/*')

# HOME
get '/' do
  erb( :"animals/home" )
end

# index
get '/animals' do
  @animals = Animal.all
  erb ( :"animals/index" )
end

get '/animals/:id' do
  @animal = Animal.find(params['id'])
  erb ( :"animals/show" )
end


# new

# create

# edit

# update

# destroy
