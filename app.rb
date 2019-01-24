require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
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
      $player1 = Player.new(session[:player1_name])
      $player2 = Player.new(session[:player2_name])
      erb (:play)
    end

    get '/attack' do
      @player1 = $player1
      @player2 = $player2
      @player1.attack(@player2)
      erb (:attack)
    end

    run! if app_file == $0
end
