class River

  attr_accessor :name, :fishno

  def initialize(name)
    @name = name
    @fishno = []
  end

  def fish_count
    return @fishno.length
  end

  def add_fish(newfish)
    @fishno << newfish
  end

  def remove_fish
    @fishno.pop
  end

end
