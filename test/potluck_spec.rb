require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it 'has a date' do
    potluck = Potluck.new("7-13-18")

    potluck.date
    expect(potluck.date).to eq("7-13-18")
  end

  it 'can have dishes' do
    potluck = Potluck.new("7-13-18")

    potluck.dishes
    expect(potluck.dishes).to eq([])
  end

  it 'can include dishes' do
    potluck = Potluck.new("11-28-87")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    potluck.dishes
    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])

    potluck.dishes.length
    expect(potluck.dishes.length).to eq(2)
  end



end
