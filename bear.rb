class Bear

  attr_reader :type
  attr_accessor :name, :stomach
  
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end

end