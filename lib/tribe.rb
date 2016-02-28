class Tribe
  attr_reader :name, :members
  
  def initialize(op={})
    @name = op[:name]
    @members = op[:members]
    puts "New Tribe #{@name}.capitalize, let the odds be ever in your favor!"
  end

  def to_s
    @name
  end

  def tribal_council(op={})
    immune = op[:immune]
    members = @members.delete_if { |member| member == immune }
    members.sample
  end
    

end