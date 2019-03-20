require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate=Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_hash|
        Ship.new(ship_hash)
      end
      @all_ships=Ship.all
    #  binding.pry
      erb :'/pirates/show'
    end

  end
end
