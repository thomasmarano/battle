require 'sinatra/base'

class Battle < Sinatra::Base
    # get '/' do
    #     "Testing infrastructure working!"
    # end

    get '/' do
      erb (:index)
    end

enable :sessions

    post '/names' do
      session[:player1_name] = params[:player1_name]
      session[:player2_name] = params[:player2_name]
      redirect '/play'
    end

    get '/play' do
      @player1_name = session[:player1_name]
      @player2_name = session[:player2_name]
      erb (:play)
    end

    run! if app_file == $0
end
