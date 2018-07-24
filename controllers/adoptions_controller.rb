require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

also_reload('../models/*')



get '/adoption/index' do
  @adoptions = Adoption.all
  erb ( :"adoption/index" )
end

get '/adoption/new' do
  @owners = Owner.all
  @animals = Animal.all
  erb ( :"adoption/new" )
end


post '/adoption' do
  @adoption = Adoption.new(params)
  @adoption.save()
  #get the animal that was adopted
  @animal = Animal.find( params['animal_id'].to_i )
  #change that animals status to 'adopted'
  @animal.adoptable = "Adopted"
  #update that animal on db
  @animal.update()
  erb ( :"adoption/create" )
end
