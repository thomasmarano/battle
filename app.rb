require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
    get '/' do
      erb (:index)
    end

enable :sessions

    post '/names' do
      player1 = Player.new(params[:player1_name])
      player2 = Player.new(params[:player2_name])
      $game = Game.new(player1, player2)
      redirect '/play'
    end

    get '/play' do
      @game = $game
      erb (:play)
    end

    get '/player-attack' do
      @game = $game
      @game.attack(@game.player_2)
      erb (:attack)
    end

    get '/player-two-attack' do
      @game = $game
      @game.attack(@game.player_1)
      erb (:attacktwo)
    end

    run! if app_file == $0
end
