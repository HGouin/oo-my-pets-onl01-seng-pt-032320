class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  def initalize(name, owner)
    @name = name
    @owner = owner
  end
end
