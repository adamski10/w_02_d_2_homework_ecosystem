class River

  attr_reader :name
  attr_accessor :fish_stock

  def initialize(name)
    @name = name
    @fish_stock = []
  end 
  
  def fill_river_with_fish(fish)
    @fish_stock.concat(fish)
  end

  def remove_fish(fish)
    @fish_stock.delete(fish)
  end

end