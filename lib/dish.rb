require './lib/dish'
require './lib/potluck'

class Dish
  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category
  end
end
