class Dish
  attr_accessor :name, :category
  def initialize(name, category)
    @name = name
    @category = category
  end
  
  def name
    @name
  end

  def category
    @category
  end
  

end