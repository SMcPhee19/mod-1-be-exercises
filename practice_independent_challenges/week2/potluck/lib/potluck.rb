class Potluck
  attr_reader
  def initialize(date, dishes)
    @date = date
    @dishes = []
  end

  def date
    @date
  end
end