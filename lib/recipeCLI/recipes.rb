class RecipeCLI::Recipes
  attr_accessor :hits, :recipe, :label, :ingredientLines
  @@all = []
  
  def initialize(hash)
    hash.each{|key, value| self.send(("#{key}="), value)}
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  
  
end