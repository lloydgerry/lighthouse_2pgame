class Player
  attr_accessor :name, :health, :decrease

  def initialize(name) 
    @health = 3
    @name = name
  end

  def decrease
    @health -= 1 
  end
end