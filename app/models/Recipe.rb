class Recipe

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.most_popular
    most_popular = []
    highest_count = 0
    @@all.each do |recipe|
      if recipe.recipe_cards.count > highest_count
        highest_count = recipe.recipe_cards.count
        most_popular = recipe
      end
    end
    most_popular
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def users
    self.recipe_cards.map do |recipecard|
      recipecard.user
    end
  end

  def allergens
    self.ingredients.select do |ingredient|
      ingredient.allergens
    end
  end

  def add_ingredients(ingredients) # array of ingredients
    ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |recipeingredient|
      recipeingredient.ingredient
    end
  end

end # end of Recipe class
