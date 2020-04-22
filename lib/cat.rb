class Cat

@@all_owners = []

  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_owners << owner
  end

  def self.all
    all = []
    @@all_owners.each{|owner| all << owner}
    all
  end
end
