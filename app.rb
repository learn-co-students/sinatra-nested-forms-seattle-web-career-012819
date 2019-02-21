require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    set :views, 'views/pirates'

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    get '/pirates' do 
      erb :show
    end

    post '/pirates' do
      
      name = params['pirate']['name']
      weight = params['pirate']['weight']
      height = params['pirate']['height']
      @pirate = Pirate.new(name, weight, height)
      
      params[:pirate][:ships].each do |ship_hash|
        name = ship_hash['name']
        type = ship_hash['type']
        booty = ship_hash['booty']
        Ship.new(name, type, booty)
      end

      @ships = Ship.all
      erb :show
    end

  end
end
