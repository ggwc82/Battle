class Player
  
  DEFAULT_HP = 100
  DEFAULT_ATTACK = 10

  def initialize(name, hp=DEFAULT_HP)
    @name = name
    @hp = hp
  end



  def was_attacked
    @hp -= DEFAULT_ATTACK
  end

  attr_reader :name, :hp
end