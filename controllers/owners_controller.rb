require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

also_reload('../models/*')

get '/owners' do
  @owners = Owner.all
  erb( :"owners/index")
end

get '/owner/new' do
  @owners = Owner.all
  erb ( :"owners/new")
end

post '/owners' do
  new_owner = Owner.new(params)
  new_owner.save()
  redirect to("/owners")
end

get '/owners/:id' do
  @owner = Owner.find(params['id'])
  erb ( :"owners/show")
end
