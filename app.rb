require './environment'



module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end 

    get '/new' do 
      erb :new
    end 

    # get '/pirates' do
    #   erb :show
    # end

    post '/pirates' do
      @pirate_args = params[:pirate]
      @ship_hash = params[:pirate][:ships]
      @pirate = Pirate.new(@pirate_args)
      @ship_hash.each do |ship_args|
        Ship.new(ship_args)
      end
      @ship1 = Ship.all[0]
      @ship2 = Ship.all[1]
      erb :show
    end
  end
end
