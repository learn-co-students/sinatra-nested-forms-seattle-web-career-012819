require './environment'

module FormsLab
  class App < Sinatra::Base

    get ('/') {
      erb :root
    }

    get ('/new') {
      erb :"pirates/new"
    }

    post ('/pirates') {
      @pirate_name = params["pirate"]["name"]
      @pirate_weight = params["pirate"]["weight"]
      @pirate_height = params["pirate"]["height"]

      @ship_1_name = params["pirate"]["ships"][0]["name"]
      @ship_1_type = params["pirate"]["ships"][0]["type"]
      @ship_1_booty = params["pirate"]["ships"][0]["booty"]

      @ship_2_name = params["pirate"]["ships"][1]["name"]
      @ship_2_type = params["pirate"]["ships"][1]["type"]
      @ship_2_booty = params["pirate"]["ships"][1]["booty"]
      
      erb :"pirates/show"
    }
  end
end
