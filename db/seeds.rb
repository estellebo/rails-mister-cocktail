require 'faker'

puts 'Creating ingredients...'

50.times do
  name = Faker::Food.ingredient
  ingredient = Ingredient.new(name: name)
  ingredient.save
end

puts 'Finished!'
