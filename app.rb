require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # set :views, Proc.new { File.join(root, "views/pirates")}
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      @first_ship = Ship.new(params[:pirate][:ships][0])
      @second_ship = Ship.new(params[:pirate][:ships][1])
      erb :"pirates/show"
    end

    # get '/pirates/show' do
    #   binding.pry
    #   erb :"pirates/show"
    # end


  end
end
