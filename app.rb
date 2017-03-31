require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  @game = Game.new(:x, :y)

  def self.game
    @game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Battle.game.assign(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/switch-turns' do
    Battle.game.switch_turns
    redirect '/play'
  end

  get '/attack' do
    Battle.game.attack(Battle.game.opponent)
    redirect '/lost' if (Battle.game.opponent).score == 0
    erb :attack
  end

  get '/lost' do
    erb :lost
  end

  run! if app_file == $0
end
