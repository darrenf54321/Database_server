require 'sinatra/base'

class DataBase < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello DataBase!'
  end

  get '/set' do
  key = params.flatten[-2]
  value = params.flatten[-1]
  session[key] = value
  "key value page is #{key}: #{value}"
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
