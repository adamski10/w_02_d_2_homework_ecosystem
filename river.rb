class River

  attr_reader :name
  attr_accessor :fish_stock

  def initialize(name)
    @name = name
    @fish_stock = 100
  end 
  
  def remove_fish(num)
    @fish_stock -= num
  end

end