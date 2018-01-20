class VenuesController < Sinatra::Base

  set :public_folder, 'public'
  set :views, 'app/views'
  set :session_secret, "secret"
  enable :sessions

  get '/venues' do
    @venues = Venue.all
    erb :'venues/index'
  end

end
