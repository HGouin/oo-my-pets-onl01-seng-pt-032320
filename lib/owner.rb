class Owner
  @@all = []

  attr_accessor
  attr_reader :species, :name
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
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



end
