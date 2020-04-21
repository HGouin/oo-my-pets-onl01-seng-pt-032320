class Owner
  @@all = []

  attr_accessor
  attr_reader :species, :name
  def initialize(name)
    @name = name
    @species = human
    @@all << self
  end

  def self.all
    @@all
  end
end
