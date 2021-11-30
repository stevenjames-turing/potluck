require './lib/dish'

RSpec.describe Dish do
  it 'has a name' do
    dish = Dish.new("Couscous Salad", :appetizer)

    dish.name
    expect(dish.name).to eq('Couscous Salad')
  end

  it 'has a category' do
    dish = Dish.new("Couscous Salad", :appetizer)

    dish.category
    expect(dish.category).to eq(:appetizer)
  end








end
