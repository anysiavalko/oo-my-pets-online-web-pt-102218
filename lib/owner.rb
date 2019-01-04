class Owner
  attr_accessor :name, :pets 
  
  def self.all 
    @@all
  end
  
  @@all = [ ]
  
  def self.reset_all
    @@all.clear
  end 
  
  def self.count
    @@all.count
  end
  
  
  def initialize(name, species= "human")
    @name = name 
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats=> []}
  end
  
  def species 
    @species 
  end 
  
  def say_species 
    "I am a #{species}."
  end 
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
   def sell_pets
    pets.each do |species, indv_pet|
      indv_pet.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end
  
  def list_pets
    
  
end