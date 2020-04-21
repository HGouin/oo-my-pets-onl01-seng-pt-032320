class Cat
  attr_reader :name, :mood, :owner
  def initalize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
  end
end
