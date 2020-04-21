class Owner
  @@all = []

  attr_accessor
  attr_reader :species, :name
  def initialize(name)
    @name = name
    @species = species
    @@all << self
  end
  def name
    @name
  end

  def self.all
    @@all
  end
end
