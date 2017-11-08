class Bears

  attr_accessor :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def food_count
    @stomach.length
  end

  def roar(sound)
    return sound
  end

  def take_fish(river)
    value = river.fishno.pop
    @stomach << value
  end


end
