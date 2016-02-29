class Tribe
  attr_reader :name, :members
  
  def initialize(op={})
    @name = op[:name]
    @members = op[:members]
    puts "New Tribe ".green + "#{@name}" +  ", may the odds be ever in your favor!".green
  end

  def to_s
    @name
  end

  def tribal_council(op={})
    immune = op[:immune]
    members = @members.select { |member| member != immune }
    @members.delete(members.sample)
  end
end