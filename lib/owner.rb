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

  end

  def self.reset_all
    self.all.clear
  end
end
