require 'pry'
# code goes here
## Pseudocoding: 
## 1. Define attributes (owner will have attr_accessor; name will have attr_reader)
## 2. Initialize name and owner args
## 3. Cat starts with a nervous mood
## 4. Need @@all --> class variable of cats that keeps track of all cats


class Cat

  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self 
  end 

  def self.all
    @@all
  end


end