require('sinatra')
require('sinatra/contrib/all')
require_relative('models/animal')
require_relative('models/owner')

also_reload('./models/*')

# HOME
get '/' do
  erb( :home )
end
