class Owner
  @@all = []


  attr_accessor :cats, :dogs
  attr_reader :species, :name, :cats, :dogs
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    Cat.all.each do |cat|
      if cat.name == cat_name
        cat.owner = self
        return
      end
    end
  end

  def buy_dog(dog_name)
    Dog.all.each do |dog|
      if dog.name == dog_name
        dog.owner = self
        return
      end
    end
  end



end
