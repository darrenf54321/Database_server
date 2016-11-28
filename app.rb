require 'sinatra/base'

class DataBase < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello DataBase!'
  end

  post '/input' do
    session[:key] = params[:value]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
