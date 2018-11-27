require_relative '../config/environment.rb'

require "pry"

u1 = User.new("Chris")
u2 = User.new("Connor")
u3 = User.new("Joyce")

i1 = Ingredient.new("Nutella")
i2 = Ingredient.new("Banana")
i3 = Ingredient.new("Bread")
i4 = Ingredient.new("Peanut Butter")
i5 = Ingredient.new("Honey")
i6 = Ingredient.new("M&M")

r1 = Recipe.new("Toast")
r2 = Recipe.new("PB & Nutella")
r3 = Recipe.new("Big Dessert")

                  #recipe, user, date, rating
rc4 = RecipeCard.new(r2, u1, "2013-03-10", 9)
rc1 = RecipeCard.new(r1, u1, "2012-11-27", 5)
rc5 = RecipeCard.new(r3, u1, "1995-02-05", 10)

rc6 = RecipeCard.new(r2, u2, "2018-09-06", 3)
rc8 = RecipeCard.new(r3, u2, "2011-05-15", 8)
rc2 = RecipeCard.new(r1, u2, "1982-01-07", 6)

rc9 = RecipeCard.new(r3, u3, "2010-12-05", 9)
rc7 = RecipeCard.new(r2, u3, "1985-06-25", 6)
rc3 = RecipeCard.new(r1, u3, "1800-09-15", 7)


                        # recipe, ingredient
ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r1, i2)
ri3 = RecipeIngredient.new(r1, i3)
ri4 = RecipeIngredient.new(r2, i4)
ri5 = RecipeIngredient.new(r3, i5)
ri6 = RecipeIngredient.new(r3, i6)

a1 = Allergen.new(u1, i1)
a2 = Allergen.new(u1, i4)
a3 = Allergen.new(u2, i4)
a4 = Allergen.new(u3, i4)





binding.pry

puts "bye bye!"
