require 'pry'

## Pseudocoding: 
## 1. Initialize with name and owner
## 2. Owner attr_accessor ; name attr_reader
## 3. Intialize with nervous mood
## 4. Class knows all dogs

class Dog
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