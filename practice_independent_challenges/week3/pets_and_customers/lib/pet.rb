class Pet
  attr_reader :name,
              :type,
              :age

  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @fed = false
    @age = 3
  end

  def feed
    @fed = true
  end

  def fed?
    @fed
  end

  def age
    @age
  end
end
