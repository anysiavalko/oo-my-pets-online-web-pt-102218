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
  
  def buy_fish(name)
    pets[:fishes]<< Fish.new(name)
  end 
  
  
  def species 
    @species 
  end 
  
  def say_species 
    "I am a #{species}."
  end 
  
  
end