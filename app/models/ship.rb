class Ship
  attr_accessor :name , :type , :booty
  Ships = []
  
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  end
  
   def self.all
    Ships
  end

  def self.clear
    Ships.clear
  end
end