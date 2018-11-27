class Allergen

  attr_reader :ingredient, :user

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, ingredient)
    @ingredient = ingredient
    @user = user

    @@all << self
  end

  

end # end of Allergen class
