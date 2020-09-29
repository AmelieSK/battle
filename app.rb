require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base #battle will take all design from Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end
  get '/names' do
    erb(:index)
  end
  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end
  get '/play' do
    @game = $game
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
