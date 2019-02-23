require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'/pirates/index'
    end
    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      sam = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      boat1 = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      boat2 = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      # binding.pry
      erb :'pirates/show'
    end

  end #of class
end
