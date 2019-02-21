class Ship
  attr_reader :name, :type, :booty
  @@all_ships = []

  # def initialize(name: nil, type: nil, booty: nil)
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]

    @@all_ships << self
  end

  def self.all
    @@all_ships
  end

  def self.clear
    @@all_ships = []
  end

end
