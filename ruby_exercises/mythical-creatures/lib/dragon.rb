class Dragon

  attr_reader :name, :color, :rider
  attr_accessor :hungryness, :food_consumed

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungryness = true
    @food_consumed = 0
  end

  def hungry?
    @hungryness ## setting `hungry?` to reference the instance varable. whis has been set to true by default
  end

  def eat
    @food_consumed += 1 ## setting the `@food_consumed`, which is default set to 0, to go up in increments of one
    if food_consumed < 3 
      @hungryness = true
    else
      @hungryness = false
    end
  end




end