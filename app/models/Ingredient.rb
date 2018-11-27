class Ingredient

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.most_common_allergen
    most_common = []
    highest_count = 0
    @@all.each do |ingredient|
      if ingredient.allergens.count > highest_count
        highest_count = ingredient.allergens.count
        most_common = ingredient
      end
    end
    most_common
  end


  def initialize(name)
    @name = name

    @@all << self
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.ingredient == self
    end
  end

  def recipes
    self.recipe_ingredients.map do |recipeingredient|
      recipeingredient.recipe
    end
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def users
    self.allergens.map do |allergen|
      allergen.user
    end
  end

end # end of Ingredient class
