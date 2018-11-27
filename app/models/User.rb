require 'date'
class User

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_recipe_card(recipe, date, rating) # recipe, user, date, rating
    RecipeCard.new(recipe, self, date, rating)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def ingredients
    self.allergens.map do |allergen|
      allergen.ingredient
    end
  end

  def recipe_cards
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |recipecard|
      recipecard.recipe
    end
  end

  def top_three_recipes
    self.recipe_cards.sort {|a,b| b.rating <=> a.rating}[0..2].map {|rc| rc.recipe}
  end

  def most_recent_recipe
    self.recipe_cards.sort_by {|rc| rc.date}.reverse[0].recipe
  end

end # end of User class

#BONUS
# def safe_recipes
#   Recipe.all.delete_if do |recipe|
#     recipe.ingredients.any? {|ingredient| self.allergens.include? (ingredient)}
#   end
# end
# def safe_recipes
#   a = self.allergens
#   Recipe.all.delete_if do |recipe|
#     recipe.ingredients.each do |ingredient|
#       a.include?(ingredient)
#     end
#   end
# end
  # def most_recent_recipe
  #   x= self.recipe_cards.map {|rc| rc.date}
  #   x.sort_by do |s|
  #     Date.parse(s, '%-m/%d/%Y')
  #     binding.pry
  #   end
  #   x[0]
  # end

# #  def most_recent_recipe
#   #  x= self.recipe_cards.sort_by do |rc|
#   #      rc.date
#         #.Date.parse(s, '%-m/%d/%Y')
#        end
#   #  x[0].recipe
#   #end
