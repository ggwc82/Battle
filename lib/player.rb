class Player
  
  DEFAULT_HP = 80

  def initialize(name, hp=DEFAULT_HP)
    @name = name
    @hp = hp
  end

  attr_reader :name, :hp
end