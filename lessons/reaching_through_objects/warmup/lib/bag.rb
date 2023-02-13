class Bag
  
  attr_reader :candies
  def initialize()
    @empty = true
    @candies = []
  end

  def empty?
    @empty
    if candies != []
      false 
    else 
      @empty
    end
  end

  def add_candy(candy)
    @candies << candy
  end

  def count 
    @candies.length 
  end

  def contains?(candy_type)
    @candies.any? do |candy|
      candy.type == candy_type
    end
  end

  
end