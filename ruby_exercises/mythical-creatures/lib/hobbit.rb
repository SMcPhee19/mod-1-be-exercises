class Hobbit
  attr_reader :name,
              :disposition,
              :age
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return false if @age <= 32
    true 
  end

  def old?
    return true if @age >= 101
  end

  def has_ring?
    if @name != "Frodo"
      false
    else 
      true
    end
  end

  def is_short?
    true 
  end
end