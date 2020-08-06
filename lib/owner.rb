## Pseudocoding: 
## 1. Can have name, name can be nil
## 2. name attr_reader
## 3. species = human, initalized with it (not an arg), attr_reader
## 4. Have method say_species that returns a string of some kind w/ message
## 5. Class variable @@all that returns all instances that have been initated 
## 6. .count after class variable
## 7. .reset after class variable 

require 'pry'


class Owner
attr_reader :name, :species
@@all = []

  def initialize(name)
  @name = name
  @species = "human"
  @@all << self
  end 

  def say_species
    "I am a #{species}."
  end 

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select do |cat|
        cat.owner == self 
    end
  end

def dogs
  Dog.all.select do |dog|
      dog.owner == self 
    end
  end

## rewrite owner class
## should know upon request, name all cats

def buy_cat(name)
  Cat.new(name, self)
end 

def buy_dog(name)
  Dog.new(name, self)
end 

def walk_dogs
  Dog.all.each do |dog|
    dog.mood = "happy"
  end 
end

def feed_cats
  Cat.all.each do |cat|
    cat.mood = "happy"
  end 
end 


def sell_pets
  pets = self.cats + self.dogs
  pets.each do |pet|
    pet.mood = "nervous"
    pet.owner = nil
  end
  
end 

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end 

end

