class RecipeCard

  attr_reader :recipe, :user
  attr_accessor :date, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(recipe, user, date, rating)
    @recipe = recipe
    @user = user
    @date = Date.parse(date)
    @rating = rating

    @@all << self
  end



end # end of RecipeCard class
