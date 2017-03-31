require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/switch-turns' do
    $game.switch_turns
    redirect '/play'
  end

  get '/attack' do
    $game.attack($game.opponent_of($game.current_player))
    redirect '/lost' if ($game.opponent_of($game.current_player)).score == 0
    erb :attack
  end

  get '/lost' do
    erb :lost
  end

  run! if app_file == $0
end
